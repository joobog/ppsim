/**
    \file MainWindow.cpp
    \author Eugen Betke
    \brief Main Window.
*/



#include "MainWindow.h"
#include "Bounded.h"
#include "AboutWindow.h"
#include "RuntimeError.h"
#include <unistd.h>
#include <ctime>
#include <stdio.h>
#include <iostream>

namespace ppsim {

using Gtk::ALIGN_END;
using Gtk::ALIGN_START;
using Gtk::ORIENTATION_VERTICAL;
using Gtk::ORIENTATION_HORIZONTAL;

MainWindow::MainWindow() try :
    _vpaned_main(                       ORIENTATION_VERTICAL),
    _frame_simulation(                  "Simulation"),
    _frame_pred(                        "Predator"),
    _frame_prey(                        "Prey"),

    _button_sim_start_stop(             "start"),
    _button_sim_next_cycle(             "next"),
    _label_sim_cycles(                  "cycles",                   ALIGN_END),
    _label_sim_number_of_threads(       "number of threads",        ALIGN_END),

    _button_prey_push_preys(            "push"),
    _button_pred_push_predators(        "push"),
    _label_world_size_x(                "size_x",                   ALIGN_END),
    _label_world_size_y(                "size_y",                   ALIGN_END),
    _button_world_size_change(          "change"),
    _label_prey_push_n_preys(           "number of preys",          ALIGN_END),
    _label_pred_push_n_predators(       "number of predators",      ALIGN_END),
    _label_world_pred_init_number(      "init number pred",         ALIGN_END),
    _label_world_prey_init_number(      "init number prey",         ALIGN_END),

    _frame_info(                        "Info"),

    _frame_info_sim(                    "Simulation"),
    _label_info_cycle_counter(          "cycle",                    ALIGN_START),
    _label_info_cycle_counter_display(  "0",                        ALIGN_START),
    _label_info_frame_rate(             "frame rate",               ALIGN_START),
    _label_info_frame_rate_display(     "0",                        ALIGN_START),
    _label_info_time_start(             "start time",               ALIGN_START),
    _label_info_time_start_display(      "-",                       ALIGN_START),
    _label_info_time_stop(              "stop time",                ALIGN_START),
    _label_info_time_stop_display(      "-",                        ALIGN_START),
    _label_info_duration(               "duration in sec",          ALIGN_START),
    _label_info_duration_display(       "-",                        ALIGN_START),

    _frame_info_pop_stat(               "Population statistics"),
    _label_info_pop_stat_preys(         "preys",                    ALIGN_START),
    _label_info_pop_stat_preds(         "predators",                ALIGN_START),
    _label_info_total(                  "total",                    ALIGN_START),
    _label_info_preys_total_display(    "0",                        ALIGN_START),
    _label_info_preds_total_display(    "0",                        ALIGN_START),

    _frame_info_dead_stat(              "Dead statistics"),
    _label_info_dead_stat_preys(        "preys",                    ALIGN_START),
    _label_info_dead_stat_preds(        "predators",                ALIGN_START),
    _label_info_aged(                   "aged",                     ALIGN_START),
    _label_info_preys_aged_display(     "0",                        ALIGN_START),
    _label_info_preds_aged_display(     "0",                        ALIGN_START),
    _label_info_eaten(                  "eaten",                    ALIGN_START),
    _label_info_preys_eaten_display(    "0",                        ALIGN_START),
    _label_info_preds_eaten_display(    "0",                        ALIGN_START),
    _label_info_starved(                "starved",                  ALIGN_START),
    _label_info_preys_starved_display(  "0",                        ALIGN_START),
    _label_info_preds_starved_display(  "0",                        ALIGN_START),
    _label_info_underfed(               "underfed",                 ALIGN_START),
    _label_info_preys_underfed_display( "0",                        ALIGN_START),
    _label_info_preds_underfed_display( "0",                        ALIGN_START),

    _label_plant_max_energy(            "max energy",               ALIGN_END),
    _label_plant_growth_rate(           "growth rate",              ALIGN_END),

    _label_prey_birth_rate(             "birth rate",               ALIGN_END),
    _label_prey_energy_consumption(     "energy consumption",       ALIGN_END),
    _label_prey_satiation_consumption(  "satiation consumption",    ALIGN_END),
    _label_prey_max_age(                "max age",                  ALIGN_END),
    _label_prey_max_satiation(          "max satiation",            ALIGN_END),
    _label_prey_max_energy(             "max energy",               ALIGN_END),

    _label_pred_birth_rate(             "birth rate",               ALIGN_END),
    _label_pred_energy_consumption(     "energy consumption",       ALIGN_END),
    _label_pred_satiation_consumption(  "satiation consumption",    ALIGN_END),
    _label_pred_max_age(                "max age",                  ALIGN_END),
    _label_pred_max_satiation(          "max satiation",            ALIGN_END),
    _label_pred_max_energy(             "max energy",               ALIGN_END),

    _stop(true),
    _thread(0),

    _label_world_vis_zoom(              "zoom",                     ALIGN_END),
    _adj_world_zoom(        Gtk::Adjustment::create(100.0, 5.0, 100.0, 10, 100)),
    _scale_world_vis_zoom(      _adj_world_zoom),


    _label_graph_vis_pos(               "pos",                      ALIGN_END),
    _label_graph_vis_zoom(              "zoom",                     ALIGN_END),
    _adj_graph_vis_zoom(    Gtk::Adjustment::create(100.0, 0.0, 100.0, 10, 100)),
    _adj_graph_vis_pos(     Gtk::Adjustment::create(100.0, 0.0, 100.0, 10, 100)),


    _scale_graph_vis_zoom(  _adj_graph_vis_zoom,    Gtk::ORIENTATION_HORIZONTAL),
    _scale_graph_vis_pos(   _adj_graph_vis_pos,     Gtk::ORIENTATION_HORIZONTAL),
    _check_button_graph_vis_zoom(       "max zoom"),
    _check_button_graph_vis_pos(        "last pos"),

    _button_graph_vis_clear(            "clear"),

    _ini_parser(                        "settings.ini")
{
	using namespace Gtk;
	using namespace Gdk;
	using namespace ppsim;

    int entry_width = 10;

    add(_vbox_main);
    set_title("Predator-Prey-Simulator");
	set_border_width(10);
        _vbox_main.set_orientation(Gtk::ORIENTATION_VERTICAL);
        _refActionGroup = Gtk::ActionGroup::create();

            _refActionGroup->add(Gtk::Action::create("FileMenu", "_File", "File Menu"));
            _refActionGroup->add(Gtk::Action::create("Export", "_Export to CSV", "Export to CSV"),
                sigc::mem_fun(*this, &MainWindow::on_action_export));
            _refActionGroup->add(Gtk::Action::create("Quit", "_Quit", "Quit program"),
                sigc::mem_fun(*this, &MainWindow::close_sim));
            _refActionGroup->add(Gtk::Action::create("Help", "Help", ""));
            _refActionGroup->add(Gtk::Action::create("About", "_About", ""),
                sigc::mem_fun(*this, &MainWindow::show_about));

            _refActionGroup->add(Gtk::Action::create("Settings", "_Settings", "Settings"));
            _ref_toggle_action_graph = Gtk::ToggleAction::create("Graph", "_Graph", "Enable Graph");
            _ref_toggle_action_world = Gtk::ToggleAction::create("World", "_World", "Enable World");
            _ref_toggle_action_stats = Gtk::ToggleAction::create("Stat", "_Statistics", "Enable Statistics");
            _refActionGroup->add(_ref_toggle_action_graph, sigc::mem_fun(*this, &MainWindow::on_toggle_action_graph));
            _refActionGroup->add(_ref_toggle_action_world, sigc::mem_fun(*this, &MainWindow::on_toggle_action_world));
            _refActionGroup->add(_ref_toggle_action_stats, sigc::mem_fun(*this, &MainWindow::on_toggle_action_stats));


        Glib::ustring ui_info =
            "<ui>"
            "   <menubar name='MenuBar'>"
            "   <menu action='FileMenu'>"
            "       <menuitem action='Export'/>"
            "       <menuitem action='Quit' />"
            "   </menu>"
            "   <menu action='Settings'>"
            "       <menuitem action='Graph'/>"
            "       <menuitem action='World'/>"
            "       <menuitem action='Stat'/>"
            "   </menu>"
            "    <menu action='Help'>"
            "      <menuitem action='About'/>"
            "    </menu>"
            "  </menubar>"
            "</ui>";

            _refUIManager = Gtk::UIManager::create();
            _refUIManager->insert_action_group(_refActionGroup);
            add_accel_group(_refUIManager->get_accel_group());
//*
          try
          {
            _refUIManager->add_ui_from_string(ui_info);
          }
          catch(const Glib::Error& ex)
          {
            std::cerr << "building menus failed: " <<  ex.what();
          }
//*
          //Get the menubar and toolbar widgets, and add them to a container widget:
          Gtk::Widget* pMenubar = _refUIManager->get_widget("/MenuBar");
          if(pMenubar)
            _vbox_main.add(*pMenubar);
//*/
        _vbox_main.add(_vpaned_main);
    	_vpaned_main.pack1(_hpaned_main, true, true);
            _hpaned_main.add1(_sw_ci_panel);
            _sw_ci_panel.set_hexpand(true);
            _sw_ci_panel.add(_vbox_control);

                // simulation
            	_vbox_control.set_orientation(Gtk::ORIENTATION_VERTICAL);
                _vbox_control.add(_frame_simulation);
                    _frame_simulation.add(_vbox_simulation);
                        _vbox_simulation.set_orientation(Gtk::ORIENTATION_VERTICAL);
                        _vbox_simulation.add(_grid_control_buttons);
                            _grid_control_buttons.set_column_homogeneous(true);
                            _grid_control_buttons.attach(_button_sim_start_stop, 0, 0, 1, 1);
                                /*  done in the initialization
                                    _conn_start_stop = _button_sim_start_stop.signal_clicked().connect(
                                    sigc::mem_fun(*this, &CMainWindow::on_button_sim_start_clicked));
                                //*/
                            _grid_control_buttons.attach(_button_sim_next_cycle, 2, 0, 1, 1);
                                _button_sim_next_cycle.signal_clicked().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_button_sim_next_cycle_clicked));
                        _vbox_simulation.add(_grid_sim_settings);
                            _grid_sim_settings.attach(_label_sim_cycles, 0, 0, 1, 1);
                            _grid_sim_settings.set_column_homogeneous(false);
                            _grid_sim_settings.attach(_entry_sim_cycles, 1, 0, 1, 1);
                                _entry_sim_cycles.set_width_chars(entry_width);
                            _grid_sim_settings.attach(_label_sim_number_of_threads, 0, 2, 1, 1);
                            _grid_sim_settings.attach(_entry_sim_number_of_threads, 1, 2, 1, 1);
                                _entry_sim_number_of_threads.set_width_chars(entry_width);
                                _entry_sim_number_of_threads.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_sim_number_of_threads_focus_out_event));
                                _entry_sim_number_of_threads.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_sim_number_of_threads_activate));


                // info
                _vbox_control.add(_frame_info);
                    _frame_info.add(_vbox_info);
                        _vbox_info.set_orientation(Gtk::ORIENTATION_VERTICAL);

                        _vbox_info.add(_frame_info_sim);
                            _frame_info_sim.add(_grid_info_sim);
                                _grid_info_sim.set_column_homogeneous(false);
                                _grid_info_sim.attach(_label_info_cycle_counter,                0, 0, 1, 1);
                                _grid_info_sim.attach(_label_info_cycle_counter_display,        1, 0, 1, 1);
                                _grid_info_sim.attach(_label_info_frame_rate,                   0, 1, 1, 1);
                                _grid_info_sim.attach(_label_info_frame_rate_display,           1, 1, 1, 1);
                                _grid_info_sim.attach(_label_info_time_start,                   0, 2, 1, 1);
                                _grid_info_sim.attach(_label_info_time_start_display,           1, 2, 1, 1);
                                _grid_info_sim.attach(_label_info_time_stop,                    0, 3, 1, 1);
                                _grid_info_sim.attach(_label_info_time_stop_display,            1, 3, 1, 1);
                                _grid_info_sim.attach(_label_info_duration,                     0, 4, 1, 1);
                                _grid_info_sim.attach(_label_info_duration_display,             1, 4, 1, 1);
                        _vbox_info.add(_frame_info_pop_stat);
                            _frame_info_pop_stat.add(_grid_info_pop_stat);
                                _grid_info_pop_stat.set_column_homogeneous(true);
                                _grid_info_pop_stat.attach(_label_info_pop_stat_preys,          1, 0, 1, 1);
                                _grid_info_pop_stat.attach(_label_info_pop_stat_preds,          2, 0, 1, 1);
                                _grid_info_pop_stat.attach(_label_info_total,                   0, 1, 1, 1);
                                _grid_info_pop_stat.attach(_label_info_preys_total_display,     1, 1, 1, 1);
                                _grid_info_pop_stat.attach(_label_info_preds_total_display,     2, 1, 1, 1);
                        _vbox_info.add(_frame_info_dead_stat);
                            _frame_info_dead_stat.add(_grid_info_dead_stat);
                                _grid_info_dead_stat.set_column_homogeneous(true);
                                _grid_info_dead_stat.attach(_label_info_dead_stat_preys,        1, 0, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_dead_stat_preds,        2, 0, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_aged,                   0, 1, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preys_aged_display,     1, 1, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preds_aged_display,     2, 1, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_eaten,                  0, 2, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preys_eaten_display,    1, 2, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preds_eaten_display,    2, 2, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_starved,                0, 3, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preys_starved_display,  1, 3, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preds_starved_display,  2, 3, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_underfed,               0, 4, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preys_underfed_display, 1, 4, 1, 1);
                                _grid_info_dead_stat.attach(_label_info_preds_underfed_display, 2, 4, 1, 1);


                // world, graph, preys, predators, plants
                _vbox_control.add(notebook_settings);

                    // world
                    notebook_settings.insert_page(_vbox_world_settings, "world", 0);
                        _vbox_world_settings.set_orientation(Gtk::ORIENTATION_VERTICAL);

                        _vbox_world_settings.add(_grid_world);


                            _grid_world.attach(_label_world_size_x, 0, 3, 1, 1);
                            _grid_world.attach(_entry_world_size_x, 1, 3, 1, 1);
                                _entry_world_size_x.set_width_chars(entry_width);
                                _entry_world_size_x.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_size_x_focus_out_event));
                                _entry_world_size_x.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_size_x_activate));
                            _grid_world.attach(_label_world_size_y, 0, 4, 1, 1);
                            _grid_world.attach(_entry_world_size_y, 1, 4, 1, 1);
                                _entry_world_size_y.set_width_chars(entry_width);
                                _entry_world_size_y.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_size_y_focus_out_event));
                                _entry_world_size_y.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_size_y_activate));
                            _grid_world.attach(_button_world_size_change, 2, 3, 1, 2);
                                _button_world_size_change.signal_clicked().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_button_world_size_change));
                            _grid_world.attach(_label_world_pred_init_number, 0, 5, 1, 1);
                            _grid_world.attach(_entry_world_pred_init_number, 1, 5, 1, 1);
                                _entry_world_pred_init_number.set_width_chars(entry_width);
                                _entry_world_pred_init_number.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_pred_init_number_focus_out_event));
                                _entry_world_pred_init_number.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_pred_init_number_activate));
                            _grid_world.attach(_label_world_prey_init_number, 0, 6, 1, 1);
                            _grid_world.attach(_entry_world_prey_init_number, 1, 6, 1, 1);
                                _entry_world_prey_init_number.set_width_chars(entry_width);
                                _entry_world_prey_init_number.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_prey_init_number_focus_out_event));
                                _entry_world_prey_init_number.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_world_prey_init_number_activate));


                    // plant
                    notebook_settings.insert_page(_grid_plant_param, "plant", 2);
                        _grid_plant_param.attach(_label_plant_max_energy, 0, 0, 1, 1);
                        _grid_plant_param.attach(_entry_plant_max_energy, 1, 0, 1, 1);
                            _entry_plant_max_energy.set_width_chars(entry_width);
                            _entry_plant_max_energy.signal_focus_out_event().connect(
                                sigc::mem_fun(*this, &MainWindow::on_entry_plant_max_energy_focus_out_event));
                            _entry_plant_max_energy.signal_activate().connect(
                                sigc::mem_fun(*this, &MainWindow::on_entry_plant_max_energy_activate));
                        _grid_plant_param.attach(_label_plant_growth_rate, 0, 1, 1, 1);
                        _grid_plant_param.attach(_entry_plant_growth_rate, 1, 1, 1, 1);
                            _entry_plant_growth_rate.set_width_chars(entry_width);
                            _entry_plant_growth_rate.signal_focus_out_event().connect(
                                sigc::mem_fun(*this, &MainWindow::on_entry_plant_growth_rate_focus_out_event));
                            _entry_plant_growth_rate.signal_activate().connect(
                                sigc::mem_fun(*this, &MainWindow::on_entry_plant_growth_rate_activate));


                    // prey
                    notebook_settings.insert_page(_frame_prey, "prey", 3);
                        _frame_prey.add(_grid_prey_settings);

                            _grid_prey_settings.attach(_label_prey_birth_rate, 0, 1, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_birth_rate, 1, 1, 1, 1);
                                _entry_prey_birth_rate.set_text("0.1");
                                _entry_prey_birth_rate.set_width_chars(entry_width);
                                _entry_prey_birth_rate.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_birth_rate_focus_out_event));
                                _entry_prey_birth_rate.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_birth_rate_activate));
                            _grid_prey_settings.attach(_label_prey_energy_consumption, 0, 2, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_energy_consumption, 1, 2, 1, 1);
                                _entry_prey_energy_consumption.set_width_chars(entry_width);
                                _entry_prey_energy_consumption.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_energy_consumption_focus_out_event));
                                _entry_prey_energy_consumption.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_energy_consumption_activate));
                            _grid_prey_settings.attach(_label_prey_satiation_consumption, 0, 3, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_satiation_consumption, 1, 3, 1, 1);
                                _entry_prey_satiation_consumption.set_width_chars(entry_width);
                                _entry_prey_satiation_consumption.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_satiation_consumption_focus_out_event));
                                _entry_prey_satiation_consumption.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_satiation_consumption_activate));
                            _grid_prey_settings.attach(_label_prey_max_age, 0, 4, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_max_age, 1, 4, 1, 1);
                                _entry_prey_max_age.set_width_chars(entry_width);
                                _entry_prey_max_age.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_max_age_focus_out_event));
                                _entry_prey_max_age.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_max_age_activate));
                            _grid_prey_settings.attach(_label_prey_max_satiation, 0, 5, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_max_satiation, 1, 5, 1, 1);
                                _entry_prey_max_satiation.set_width_chars(entry_width);
                                _entry_prey_max_satiation.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_max_satiation_focus_out_event));
                                _entry_prey_max_satiation.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_max_satiation_activate));
                            _grid_prey_settings.attach(_label_prey_max_energy, 0, 6, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_max_energy, 1, 6, 1, 1);
                                _entry_prey_max_energy.set_width_chars(entry_width);
                                _entry_prey_max_energy.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_max_energy_focus_out_event));
                                _entry_prey_max_energy.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_prey_max_energy_activate));
                            _grid_prey_settings.attach(_label_prey_push_n_preys, 0, 7, 1, 1);
                            _grid_prey_settings.attach(_entry_prey_push_n_preys, 1, 7, 1, 1);
                                _entry_prey_push_n_preys.set_width_chars(entry_width);
                            _grid_prey_settings.attach(_button_prey_push_preys, 2, 7, 1, 1);
                                _button_prey_push_preys.signal_clicked().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_button_prey_push_preys));

                    // pred config
                    notebook_settings.insert_page(_frame_pred, "predator", 4);
                    notebook_settings.set_vexpand(true);
                        _frame_pred.add(_grid_pred_settings);


                            _grid_pred_settings.attach(_label_pred_birth_rate, 0, 1, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_birth_rate, 1, 1, 1, 1);
                                _entry_pred_birth_rate.set_text("0.1");
                                _entry_pred_birth_rate.set_width_chars(entry_width);
                                _entry_pred_birth_rate.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_birth_rate_focus_out_event));
                                _entry_pred_birth_rate.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_birth_rate_activate));
                            _grid_pred_settings.attach(_label_pred_energy_consumption, 0, 2, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_energy_consumption, 1, 2, 1, 1);
                                _entry_pred_energy_consumption.set_width_chars(entry_width);
                                _entry_pred_energy_consumption.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_energy_consumption_focus_out_event));
                                _entry_pred_energy_consumption.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_energy_consumption_activate));
                            _grid_pred_settings.attach(_label_pred_satiation_consumption, 0, 3, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_satiation_consumption, 1, 3, 1, 1);
                                _entry_pred_satiation_consumption.set_width_chars(entry_width);
                                _entry_pred_satiation_consumption.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_satiation_consumption_focus_out_event));
                                _entry_pred_satiation_consumption.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_satiation_consumption_activate));
                            _grid_pred_settings.attach(_label_pred_max_age, 0, 4, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_max_age, 1, 4, 1, 1);
                                _entry_pred_max_age.set_width_chars(entry_width);
                                _entry_pred_max_age.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_max_age_focus_out_event));
                                _entry_pred_max_age.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_max_age_activate));
                            _grid_pred_settings.attach(_label_pred_max_satiation, 0, 5, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_max_satiation, 1, 5, 1, 1);
                                _entry_pred_max_satiation.set_width_chars(entry_width);
                                _entry_pred_max_satiation.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_max_satiation_focus_out_event));
                                _entry_pred_max_satiation.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_max_satiation_activate));
                            _grid_pred_settings.attach(_label_pred_max_energy, 0, 6, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_max_energy, 1, 6, 1, 1);
                                _entry_pred_max_energy.set_width_chars(entry_width);
                                _entry_pred_max_energy.signal_focus_out_event().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_max_energy_focus_out_event));
                                _entry_pred_max_energy.signal_activate().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_entry_pred_max_energy_activate));
                            _grid_pred_settings.attach(_label_pred_push_n_predators, 0, 7, 1, 1);
                            _grid_pred_settings.attach(_entry_pred_push_n_predators, 1, 7, 1, 1);
                                _entry_pred_push_n_predators.set_width_chars(entry_width);
                            _grid_pred_settings.attach(_button_pred_push_predators, 2, 7, 1, 1);
                                _button_pred_push_predators.signal_clicked().connect(
                                    sigc::mem_fun(*this, &MainWindow::on_button_pred_push_predators));


            _hpaned_main.add2(_vbox_world_vis_visual_world);
                _vbox_world_vis_visual_world.add(_sw_visual_world);
                _vbox_world_vis_visual_world.set_orientation(Gtk::ORIENTATION_VERTICAL);
                    _visual_world = std::shared_ptr<VisualWorld>(new VisualWorld());
                    Glib::RefPtr<Adjustment> hadj_vis_world = _sw_visual_world.get_hadjustment();
                    hadj_vis_world->signal_value_changed().connect(
                        sigc::mem_fun(*this, &MainWindow::on_sw_visual_world_value_changed));
                    Glib::RefPtr<Adjustment> vadj_vis_world = _sw_visual_world.get_vadjustment();
                    vadj_vis_world->signal_value_changed().connect(
                        sigc::mem_fun(*this, &MainWindow::on_sw_visual_world_value_changed));
                    _sw_visual_world.set_policy(Gtk::POLICY_AUTOMATIC, Gtk::POLICY_AUTOMATIC);
                    _sw_visual_world.set_shadow_type(Gtk::SHADOW_NONE);
                    _sw_visual_world.set_hexpand(true);
                    _sw_visual_world.set_vexpand(true);
                    _sw_visual_world.set_size_request(300, 300);
                    _sw_visual_world.add(*_visual_world);
                        _graph = std::shared_ptr<Graph>(new Graph());
                        _graph->set_visible_range(500);
                        _visual_world->register_graph(_graph);
                    _sw_visual_world.signal_size_allocate().connect(
                        sigc::mem_fun(*this, &MainWindow::on_sw_visual_world_signal_scroll_event));
                    _sw_visual_world.get_hadjustment()->signal_value_changed().connect(
                        sigc::mem_fun(*this, &MainWindow::compute_visual_area));
                    _sw_visual_world.get_vadjustment()->signal_value_changed().connect(
                        sigc::mem_fun(*this, &MainWindow::compute_visual_area));
                _vbox_world_vis_visual_world.add(_grid_world_vis_settings);
                    _grid_world_vis_settings.attach(_label_world_vis_zoom, 0, 0, 1, 1);
                    //_grid_world_vis_settings.attach(_entry_world_vis_zoom, 1, 0, 1, 1);
                        _entry_world_vis_zoom.set_width_chars(5);
                        _entry_world_vis_zoom.signal_focus_out_event().connect(
                            sigc::mem_fun(*this, &MainWindow::on_entry_world_vis_zoom_focus_out_event));
                        _entry_world_vis_zoom.signal_activate().connect(
                            sigc::mem_fun(*this, &MainWindow::on_entry_world_vis_zoom_activate));
                    _grid_world_vis_settings.attach(_scale_world_vis_zoom, 2, 0, 1, 1);
                        _scale_world_vis_zoom.set_hexpand(true);
                        _scale_world_vis_zoom.set_draw_value(false);
                        _scale_world_vis_zoom.set_value_pos(Gtk::POS_RIGHT);
                        _adj_world_zoom->signal_value_changed().connect(
                            sigc::mem_fun(*this, &MainWindow::on_adj_world_zoom_value_changed));
                        _scale_world_vis_zoom.set_digits(1);

        _vpaned_main.pack2(_sw_statistics, false, false);
            _sw_statistics.set_policy(Gtk::POLICY_AUTOMATIC, Gtk::POLICY_AUTOMATIC);
            _sw_statistics.set_shadow_type(Gtk::SHADOW_NONE);
            _sw_statistics.set_hexpand(true);
            _sw_statistics.set_vexpand(true);
            _sw_statistics.add(*_graph);

        _vbox_main.add(_grid_graph_vis);
            //_grid_graph_vis.set_column_homogeneous(true);
            _grid_graph_vis.set_hexpand(true);
            _grid_graph_vis.attach(_label_graph_vis_pos, 0, 0, 1, 1);
            _grid_graph_vis.attach(_entry_graph_vis_pos, 1, 0, 1, 1);
                _entry_graph_vis_pos.set_text("0");
                _entry_graph_vis_pos.set_width_chars(5);
                _entry_graph_vis_pos.signal_focus_out_event().connect(
                    sigc::mem_fun(*this, &MainWindow::on_entry_graph_vis_pos_focus_out_event));
                _entry_graph_vis_pos.signal_activate().connect(
                    sigc::mem_fun(*this, &MainWindow::on_entry_graph_vis_pos_activate));
            _grid_graph_vis.attach(_scale_graph_vis_pos, 2, 0, 1, 1);
                _scale_graph_vis_pos.set_hexpand(true);
                //_scale_graph_pos.set_value_pos(Gtk::POS_RIGHT);
                _scale_graph_vis_pos.set_draw_value(false);
                _adj_graph_vis_pos->signal_value_changed().connect(
                    sigc::mem_fun(*this, &MainWindow::on_graph_pos_value_changed));
                _scale_graph_vis_pos.set_digits(1);
            _grid_graph_vis.attach(_check_button_graph_vis_pos, 3, 0, 1, 1);
                _check_button_graph_vis_pos.set_active(true);
                _check_button_graph_vis_pos.signal_clicked().connect(
                    sigc::mem_fun(*this, &MainWindow::on_check_button_graph_vis_pos_clicked));
            _grid_graph_vis.attach(_label_graph_vis_zoom, 0, 1, 1, 1);
            _grid_graph_vis.attach(_entry_graph_vis_zoom, 1, 1, 1, 1);
                _entry_graph_vis_zoom.set_width_chars(5);
                _entry_graph_vis_zoom.set_text("500");
                _entry_graph_vis_zoom.signal_focus_out_event().connect(
                    sigc::mem_fun(*this, &MainWindow::on_entry_graph_vis_zoom_focus_out_event));
                _entry_graph_vis_zoom.signal_activate().connect(
                    sigc::mem_fun(*this, &MainWindow::on_entry_graph_vis_zoom_activate));
            _grid_graph_vis.attach(_scale_graph_vis_zoom, 2, 1, 1, 1);
                _scale_graph_vis_zoom.set_hexpand(true);
                //_scale_graph_zoom.set_value_pos(Gtk::POS_RIGHT);
                _scale_graph_vis_zoom.set_draw_value(false);
                _adj_graph_vis_zoom->signal_value_changed().connect(
                    sigc::mem_fun(*this, &MainWindow::on_graph_zoom_value_changed));
                _scale_graph_vis_zoom.set_digits(1);
            _grid_graph_vis.attach(_check_button_graph_vis_zoom, 3, 1, 1, 1);
                _check_button_graph_vis_zoom.signal_clicked().connect(
                    sigc::mem_fun(*this, &MainWindow::on_check_button_graph_vis_zoom_clicked));
            _grid_graph_vis.attach(_button_graph_vis_clear, 4, 0, 1, 2);
                _button_graph_vis_clear.signal_clicked().connect(
                    sigc::mem_fun(*this, &MainWindow::on_button_graph_vis_clear_clicked));

    _frame_rate = 0;

    _dispatcher_visualize_world.connect(sigc::mem_fun(*this, &MainWindow::visualize_world));
    _dispatcher_visualize_graph.connect(sigc::mem_fun(*this, &MainWindow::visualize_graph));
    _dispatcher_activate_control.connect(sigc::mem_fun(*this, &MainWindow::activate_control));
    _dispatcher_deactivate_control.connect(sigc::mem_fun(*this, &MainWindow::deactivate_control));
    _dispatcher_set_start_time.connect(sigc::mem_fun(*this, &MainWindow::set_start_time));
    _dispatcher_set_stop_time.connect(sigc::mem_fun(*this, &MainWindow::set_stop_time));
    _dispatcher_update_info.connect(sigc::mem_fun(*this, &MainWindow::update_info));
    _dispatcher_frame_rate.connect(sigc::bind<float&>(sigc::mem_fun(*this, &MainWindow::update_frame_rate), _frame_rate));

    // initialization block
        load_settings();
        on_changed_size();
        sync_world_adj();
        on_check_button_graph_vis_zoom_clicked();
        on_check_button_graph_vis_pos_clicked();
        update_preys();
        update_plants();
        update_predators();
        activate_control();
    // end

	show_all_children();
}
catch (RuntimeError& e) {
    e.print();
    exit(1);
}



/** \brief Destructor
 */
MainWindow::~MainWindow() {
    on_button_sim_stop_clicked();
}



/** \brief Export simulation results to CSV file.

    Exports total population and death statistics of preys and predators.
    To death statistics belongs aged, starved and eaten creatures.
 */
void
MainWindow::on_action_export() {
	using namespace std;

    cout << "CMainWindow::on_action_export()" << endl;
    Gtk::FileChooserDialog dialog("Please choose a file",
          Gtk::FILE_CHOOSER_ACTION_SAVE);
  dialog.set_transient_for(*this);

  //Add response buttons the the dialog:
  dialog.add_button(Gtk::Stock::CANCEL, Gtk::RESPONSE_CANCEL);
  dialog.add_button(Gtk::Stock::OPEN, Gtk::RESPONSE_OK);

  //Add filters, so that only supported file types can be selected:
  Glib::RefPtr<Gtk::FileFilter> filter_text = Gtk::FileFilter::create();
  filter_text->set_name("CSV files");
  filter_text->add_mime_type("text/csv");
  dialog.add_filter(filter_text);

  Glib::RefPtr<Gtk::FileFilter> filter_any = Gtk::FileFilter::create();
  filter_any->set_name("Any files");
  filter_any->add_pattern("*");
  dialog.add_filter(filter_any);

  //Show the dialog and wait for a user response:
  int result = dialog.run();

  //Handle the response:
  switch(result)
  {
    case(Gtk::RESPONSE_OK):
    {
      std::cout << "Open clicked." << std::endl;

      //Notice thata std::string is returned (not a Glib::ustring).
      std::string filename = dialog.get_filename();
      std::cout << "File selected: " <<  filename << std::endl;
      _graph->export_to_file(filename.c_str());
      break;
    }
    case(Gtk::RESPONSE_CANCEL):
    {
      std::cout << "Cancel clicked." << std::endl;
      break;
    }
    default:
    {
      std::cout << "Unexpected button clicked." << std::endl;
      break;
    }
  }

}


/** Signal handler.
*/
void
MainWindow::on_toggle_action_stats() {
    // not used
}



/** Signal handler.
*/
void
MainWindow::on_toggle_action_graph() {
    if (_ref_toggle_action_graph->get_active()) {
        _graph->enable();
    }
    else {
        _graph->disable();
    }
    _graph->force_redraw();
}



/** \brief Signal handler.
*/
void
MainWindow::on_toggle_action_world() {
    if (_ref_toggle_action_world->get_active()) {
        _visual_world->enable();
    }
    else {
        _visual_world->disable();
    }
    _visual_world->force_redraw();
}



/** \brief Signal handler.

    Recompute visible area of hex grid when window size changes.
 */
void
MainWindow::on_sw_visual_world_signal_scroll_event(Gtk::Allocation& a) {
    compute_visual_area();
}



/** \brief Determine the part of the world, that should be drawn.
*/
void
MainWindow::compute_visual_area() {
    int x = _sw_visual_world.get_allocation().get_width();
    int y = _sw_visual_world.get_allocation().get_height();
    Glib::RefPtr<Gtk::Adjustment> hadj = _sw_visual_world.get_hadjustment();
    Glib::RefPtr<Gtk::Adjustment> vadj = _sw_visual_world.get_vadjustment();;
    _visual_world->compute_visual_area(x, y, hadj->get_value(), vadj->get_value(), hadj->get_upper(), vadj->get_upper());
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_world_vis_zoom_focus_out_event(GdkEventFocus* event) {
    on_adj_world_zoom_value_changed();
    return true;
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_world_vis_zoom_activate() {
    on_adj_world_zoom_value_changed();
}



/** \brief Signal handler.

    Zoom the world.
*/
void
MainWindow::on_adj_world_zoom_value_changed() {
    _visual_world->set_cell_outer_radius(_adj_world_zoom->get_value());
    _visual_world->set_size_request(_visual_world->get_width(), _visual_world->get_height());
    _visual_world->force_redraw();
}


/** \brief Synchronize world zoom adjustment.
*/
void
MainWindow::sync_world_adj() {
    int cell_size = _visual_world->get_cell_outer_radius();
    _adj_world_zoom->set_value(cell_size);
}

//
// graph zoom
//


/** \brief Signal handler.
*/
void
MainWindow::on_graph_zoom_value_changed() {
    double adj_max = _adj_graph_vis_zoom->get_upper();
    double adj_curr = _adj_graph_vis_zoom->get_value();
    TValues::size_type graph_curr_size = _graph->get_curr_size();
    TValues::size_type range = (double) graph_curr_size * (adj_curr / adj_max);

    _entry_graph_vis_zoom.set_text(Helpers::to_str(range));
    _graph->set_visible_range(range);

    _graph->force_redraw();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_graph_vis_zoom_focus_out_event(GdkEventFocus* event) {
    on_entry_graph_vis_zoom_activate();
    return true;
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_graph_vis_zoom_activate() {
    TValues::size_type range = entry_to_value(_entry_graph_vis_zoom, (TValues::size_type) 0, (TValues::size_type) _graph->get_max_size());
    double adj_max = _adj_graph_vis_zoom->get_upper();
    double adj_curr = 0;
    if (_graph->get_curr_size() != 0) {
        adj_curr = (double) range / (double) _graph->get_curr_size() * (double) adj_max;
    }
    if (adj_curr > adj_max) {
        adj_curr = adj_max;
    }
    _adj_graph_vis_zoom->set_value(adj_curr);
    _graph->set_visible_range(range);
    _graph->force_redraw();

}



/** \brief Signal handler.
*/
void
MainWindow::on_check_button_graph_vis_zoom_clicked() {
    if (_check_button_graph_vis_zoom.get_active()) {
        _entry_graph_vis_zoom.set_state(Gtk::STATE_INSENSITIVE);
        _scale_graph_vis_zoom.set_state(Gtk::STATE_INSENSITIVE);
        _graph->set_cont_zoom(true);
    }
    else {
        _entry_graph_vis_zoom.set_state(Gtk::STATE_NORMAL);
        _scale_graph_vis_zoom.set_state(Gtk::STATE_NORMAL);
        _graph->set_cont_zoom(false);
    }
    _graph->force_redraw();
}

//
// graph position
//


/** \brief Signal handler.
*/
void
MainWindow::on_graph_pos_value_changed () {
    double adj_max = _adj_graph_vis_pos->get_upper();
    double adj_curr = _adj_graph_vis_pos->get_value();

    TValues::size_type graph_curr_size = _graph->get_curr_size();
    TValues::size_type new_pos = (double) graph_curr_size * (adj_curr / adj_max);

    _entry_graph_vis_pos.set_text(Helpers::to_str(new_pos));
    _graph->set_visible_position(new_pos);
    _graph->force_redraw();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_graph_vis_pos_focus_out_event(GdkEventFocus* event) {
    on_entry_graph_vis_pos_activate();
    return true;
}



/** \brief Signal handler.

    Define the position. The graph is drawn from this position on.
*/
void
MainWindow::on_entry_graph_vis_pos_activate() {
    long n = entry_to_value(_entry_graph_vis_pos, (long) 0, (long) _graph->get_max_size());
    double adj_max = _adj_graph_vis_pos->get_upper();
    double adj_curr = 0;
    if (_graph->get_curr_size() != 0) {
        adj_curr = (double) n / (double) _graph->get_curr_size() * (double) adj_max;
    }
    if (adj_curr > adj_max) {
        adj_curr = adj_max;
    }

    _scale_graph_vis_pos.set_value(adj_curr);
    _entry_graph_vis_pos.set_text(Helpers::to_str(n));
    _graph->set_visible_position(n);
    _graph->force_redraw();
}



/** \brief Signal handler.

    -# toggle check button
    -# modify draw parameter
        -# draw last values
        -# draw from a certain position
*/
void
MainWindow::on_check_button_graph_vis_pos_clicked() {
    if (_check_button_graph_vis_pos.get_active()) {
        _entry_graph_vis_pos.set_state(Gtk::STATE_INSENSITIVE);
        _scale_graph_vis_pos.set_state(Gtk::STATE_INSENSITIVE);
        _graph->set_cont_pos(true);
    }
    else {
        _entry_graph_vis_pos.set_state(Gtk::STATE_NORMAL);
        _scale_graph_vis_pos.set_state(Gtk::STATE_NORMAL);
        _graph->set_cont_pos(false);
    }
    _graph->force_redraw();
}



/** \brief Signal handler.

    -# clear graph
    -# reset counters
*/
void
MainWindow::on_button_graph_vis_clear_clicked() {
    std::shared_ptr<Graph> graph{_visual_world->get_graph()};

    if (graph != nullptr) {
        graph->clear();
        graph->force_redraw();

        Countable<Prey>::aged.reset();
        Countable<Prey>::eaten.reset();
        Countable<Prey>::starved.reset();
        Countable<Prey>::underfed.reset();
        Countable<Predator>::aged.reset();
        Countable<Predator>::eaten.reset();
        Countable<Predator>::starved.reset();
        Countable<Predator>::underfed.reset();
        update_info();
    }
}

//
// world resize
//

/** \brief Signal handler.
*/
bool
MainWindow::on_entry_world_size_y_focus_out_event(GdkEventFocus* event) {
    //on_entry_world_size_y_activate();     // not user friendly behavior
    std::cout << "Warning: CMainWindow::on_entry_world_size_y_focus_out_event() was deactivated" << std::endl;
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_world_size_y_activate () {
    on_changed_size();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_world_size_x_focus_out_event(GdkEventFocus* event) {
    //on_entry_world_size_x_activate();     // not user friendly behavior
    std::cout << "Warning: CMainWindow::on_entry_world_size_x_focus_out_event() was deactivated" << std::endl;
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_world_size_x_activate () {
    on_changed_size();
}



/** \brief Signal handler.
*/
void
MainWindow::on_button_world_size_change() {
    on_changed_size();
}



/** \brief Signal handler.

    When the size of the world changes.
*/
void
MainWindow::on_changed_size() {
    long n = 0;
    int x = 0;
    int y = 0;
    std::shared_ptr<AbstractWorld> abstract_world;
    PlantConfig plant_config;
    PreyConfig prey_config;
    PredatorConfig predator_config;

    // get new world size
    x = entry_to_value(_entry_world_size_x, (long) 2, (long) MAXUI);
    y = entry_to_value(_entry_world_size_y, (long) 1, (long) MAXUI);

    // get new organism configs
    plant_config = create_plant_config();
    prey_config = create_prey_config();
    predator_config = create_predator_config();

    // recreate world
    _visual_world->recreate_visual_world(x, y, plant_config, prey_config, predator_config);
    compute_visual_area();

    // push init number of creatures
    abstract_world = _visual_world->get_abstract_world();
    n = entry_to_value(_entry_world_prey_init_number, (long) 0, (long) MAXUI);
    abstract_world->push_preys(n);
    n = entry_to_value(_entry_world_pred_init_number, (long) 0, (long) MAXUI);
    abstract_world->push_predators(n);

    // update number of threads
    on_entry_sim_number_of_threads_activate();

    _visual_world->set_size_request(_visual_world->get_width(), _visual_world->get_height());
    _visual_world->force_redraw();
    _graph->force_redraw();
}

//
// Simulation and threads
//

/** \brief Signal handler. Start simulation.
 */
void
MainWindow::on_button_sim_start_clicked() {
    long cycles = entry_to_value(_entry_sim_cycles, (unsigned long) 0, (unsigned long) _visual_world->get_max_size());
    _entry_sim_cycles.set_text(Helpers::to_str(cycles));

    _stop = false;
    _thread = Glib::Thread::create(
            sigc::bind<unsigned long> (sigc::mem_fun(*this,&MainWindow::work_thread),cycles), true);
}



/** \brief Signal handler.

    Stop simulation.
*/
void
MainWindow::on_button_sim_stop_clicked() {
    _stop = true;
    if (_thread) {
        _thread->join();
    }
    _thread = nullptr;
}



/** \brief Signal handler.

    Execute one simulation cycle.
 */
void
MainWindow::on_button_sim_next_cycle_clicked() {
    _stop = false;
    _thread = Glib::Thread::create(
            sigc::bind<unsigned long> (sigc::mem_fun(*this,&MainWindow::work_thread),1), true);
}



/** \brief Run simulation.

    Thread function. Runs outside the GUI-Threads to improve responsiveness of the GUI.
 */
void
MainWindow::work_thread(unsigned long run_size) {
    timespec time_a, time_b;

    if( clock_gettime( CLOCK_REALTIME, &time_a) == -1 ) {
      perror( "clock gettime" );
      exit( EXIT_FAILURE );
    }

    _dispatcher_deactivate_control();
    _dispatcher_set_start_time();

    for (unsigned long i = 0; i < run_size; i++) {
        _visual_world->run(1);

        // update info panel
        if (_ref_toggle_action_stats->get_active()) {
            if( clock_gettime( CLOCK_REALTIME, &time_b) == -1 ) {
              perror( "clock gettime" );
              exit( EXIT_FAILURE );
            }

            if (time_b.tv_sec - time_a.tv_sec > 0) {
                _frame_rate = (float) i / (float) (time_b.tv_sec - time_a.tv_sec);
            }
            _dispatcher_frame_rate();
            _dispatcher_update_info();
        }

        _dispatcher_visualize_world();
        _dispatcher_visualize_graph();

        if (_stop) {
            break;
        }
    }
    _dispatcher_stop();
    _dispatcher_set_stop_time();
    _dispatcher_activate_control();
}



/** \brief Activate non-runtime-capable widgets.
*/
void
MainWindow::activate_control() {
    _conn_start_stop.disconnect();
    _conn_start_stop = _button_sim_start_stop.signal_clicked().connect(sigc::mem_fun(*this, &MainWindow::on_button_sim_start_clicked));
    _button_sim_start_stop.set_label("start");
    _button_sim_next_cycle.set_state(Gtk::STATE_NORMAL);
    _entry_sim_cycles.set_state(Gtk::STATE_NORMAL);
    _entry_sim_number_of_threads.set_state(Gtk::STATE_NORMAL);
    _entry_world_size_x.set_state(Gtk::STATE_NORMAL);
    _entry_world_size_y.set_state(Gtk::STATE_NORMAL);
    _button_world_size_change.set_state(Gtk::STATE_NORMAL);
}



/** \brief Deactivate non-runtime-capable widgets.
*/
void
MainWindow::deactivate_control() {
    _conn_start_stop.disconnect();
    _conn_start_stop = _button_sim_start_stop.signal_clicked().connect(sigc::mem_fun(*this, &MainWindow::on_button_sim_stop_clicked));
    _button_sim_start_stop.set_label("stop");
    _button_sim_next_cycle.set_state(Gtk::STATE_INSENSITIVE);
    _entry_sim_cycles.set_state(Gtk::STATE_INSENSITIVE);
    _entry_sim_number_of_threads.set_state(Gtk::STATE_INSENSITIVE);
    _entry_world_size_x.set_state(Gtk::STATE_INSENSITIVE);
    _entry_world_size_y.set_state(Gtk::STATE_INSENSITIVE);
    _button_world_size_change.set_state(Gtk::STATE_INSENSITIVE);
}



/** \brief Update start time of the simulation run in the GUI.
*/
void
MainWindow::set_start_time() {
    tm* htime = nullptr;
    char date[20];

    if( clock_gettime( CLOCK_REALTIME, &_start_time) == -1 ) {
      perror( "clock gettime" );
      exit( EXIT_FAILURE );
    }

    htime = localtime(&_start_time.tv_sec);
    sprintf(date, "%04d:%02d:%02d:%02d:%02d:%02d",
        htime->tm_year + 1900,
        htime->tm_mon,
        htime->tm_mday,
        htime->tm_hour,
        htime->tm_min,
        htime->tm_sec);

    _label_info_time_start_display.set_label(date);
    _label_info_time_stop_display.set_label("-");
    _label_info_duration_display.set_label("-");
}



/** \brief Update stop time of the simulation run in the GUI.
*/
void
MainWindow::set_stop_time() {
    tm* htime = nullptr;
    char date[20];

    if( clock_gettime( CLOCK_REALTIME, &_stop_time) == -1 ) {
      perror( "clock gettime" );
      exit( EXIT_FAILURE );
    }

    htime = localtime(&_stop_time.tv_sec);
    sprintf(date, "%04d:%02d:%02d:%02d:%02d:%02d",
        htime->tm_year + 1900,
        htime->tm_mon,
        htime->tm_mday,
        htime->tm_hour,
        htime->tm_min,
        htime->tm_sec);

    _label_info_time_stop_display.set_label(date);
    _label_info_duration_display.set_label(Helpers::to_str(_stop_time.tv_sec - _start_time.tv_sec));
}



/** \brief Visualize (redraw) world. Called by a dispatcher.
 */
void
MainWindow::visualize_world() {
    _visual_world->force_redraw();
}



/** \brief Visualize (redraw) graph. Called by dispatcher.
*/
void
MainWindow::visualize_graph() {
    _graph->force_redraw();
}


//
// cycle counter and statistics
//


/** \brief Update cycle counter and death statistics on the GUI.
*/
void
MainWindow::update_info() {
    std::shared_ptr<AbstractWorld> aw = _visual_world->get_abstract_world();

    _label_info_cycle_counter_display.  set_label(Helpers::to_str(aw->count_cycles()));
    _label_info_preys_total_display.    set_label(Helpers::to_str(Countable<Prey>::total.count()));
    _label_info_preys_aged_display.     set_label(Helpers::to_str(Countable<Prey>::aged.count()));
    _label_info_preys_eaten_display.    set_label(Helpers::to_str(Countable<Prey>::eaten.count()));
    _label_info_preys_starved_display.  set_label(Helpers::to_str(Countable<Prey>::starved.count()));
    _label_info_preys_underfed_display. set_label(Helpers::to_str(Countable<Prey>::underfed.count()));
    _label_info_preds_total_display.    set_label(Helpers::to_str(Countable<Predator>::total.count()));
    _label_info_preds_aged_display.     set_label(Helpers::to_str(Countable<Predator>::aged.count()));
    _label_info_preds_eaten_display.    set_label(Helpers::to_str(Countable<Predator>::eaten.count()));
    _label_info_preds_starved_display.  set_label(Helpers::to_str(Countable<Predator>::starved.count()));
    _label_info_preds_underfed_display. set_label(Helpers::to_str(Countable<Predator>::underfed.count()));
}



/** \brief Signal handler. Update frame rate (GUI).\
    \param frame_rate is cycles/time
*/
void
MainWindow::update_frame_rate(float frame_rate) {
    _label_info_frame_rate_display.set_label(Helpers::to_str(frame_rate));
}


//
// plant config
//



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_plant_max_energy_focus_out_event(GdkEventFocus* event) {
    on_entry_plant_max_energy_activate();
    return true;
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_plant_max_energy_activate() {
    update_plants();
}


// plant::growth_rate

/** \brief Signal handler.
*/
bool
MainWindow::on_entry_plant_growth_rate_focus_out_event(GdkEventFocus* event) {
    on_entry_plant_growth_rate_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_plant_growth_rate_activate() {
    update_plants();
}


// config objects

/** \brief Create a plant config object from GUI.
    \return plant configuration object
*/
PlantConfig
MainWindow::create_plant_config() {
    PlantConfig plant_config;
    plant_config.set_growth_rate(   entry_to_value<double>(_entry_plant_growth_rate, 0, 100));
    plant_config.set_max_energy(    entry_to_value<long>(_entry_plant_max_energy, 1, MAXUI));
    return plant_config;
}



/** \brief Pass new plant config to the simulation.

    Extract the plant configuration object from the GUI and apply it to all
    plants. The configuration of plants is scaled (not replaced).

    Thread-safe. Can be called during the simulation.
*/
void
MainWindow::update_plants() {
    PlantConfig plant_config = create_plant_config();
    std::shared_ptr<AbstractWorld> abstract_world = _visual_world->get_abstract_world();
    abstract_world->set_config(plant_config);
}



//
// prey config
//



/** \brief Create a prey config object from GUI.
    \return prey configuration object
*/
PreyConfig
MainWindow::create_prey_config() {
    PreyConfig prey_config;
    prey_config.set_birth_rate(             entry_to_value<double>(_entry_prey_birth_rate, 0, 100));
    prey_config.set_energy_consumption(     entry_to_value<long>(_entry_prey_energy_consumption, 0, MAXUI));
    prey_config.set_satiation_consumption(  entry_to_value<long>(_entry_prey_satiation_consumption, 0, MAXUI));
    prey_config.set_max_age(                entry_to_value<long>(_entry_prey_max_age, 1, MAXUI));
    prey_config.set_max_satiation(          entry_to_value<long>(_entry_prey_max_satiation, 1, MAXUI));
    prey_config.set_max_energy(             entry_to_value<long>(_entry_prey_max_energy, 1, MAXUI));
    return prey_config;
}



/** \brief Update configuration of all preys.

    Extract a new prey configuration object from the GUI and apply to all
    preys. The configuration of preys is scaled (not replaced).

    Thread-safe. Can be called during the simulation.
*/
void
MainWindow::update_preys() {
    PreyConfig prey_config = create_prey_config();
    std::shared_ptr<AbstractWorld> abstract_world = _visual_world->get_abstract_world();
    abstract_world->set_config(prey_config);
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_world_prey_init_number_focus_out_event(GdkEventFocus* event) {
    on_entry_world_prey_init_number_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_world_prey_init_number_activate() {
    // nothing to do
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_prey_birth_rate_focus_out_event(GdkEventFocus* event) {
    on_entry_prey_birth_rate_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_prey_birth_rate_activate() {
    update_preys();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_prey_energy_consumption_focus_out_event(GdkEventFocus* event) {
    on_entry_prey_energy_consumption_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_prey_energy_consumption_activate() {
    update_preys();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_prey_satiation_consumption_focus_out_event(GdkEventFocus* event) {
    on_entry_prey_satiation_consumption_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_prey_satiation_consumption_activate() {
    update_preys();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_prey_max_age_focus_out_event(GdkEventFocus* event) {
    on_entry_prey_max_age_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_prey_max_age_activate() {
    update_preys();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_prey_max_satiation_focus_out_event(GdkEventFocus* event) {
    on_entry_prey_max_satiation_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_prey_max_satiation_activate() {
    update_preys();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_prey_max_energy_focus_out_event(GdkEventFocus* event) {
    on_entry_prey_max_energy_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_prey_max_energy_activate() {
    update_preys();
}



/** \brief Signal handler.
    \return predator configuration object
*/
PredatorConfig
MainWindow::create_predator_config() {
    PredatorConfig _pred_config;
    _pred_config.set_birth_rate(            entry_to_value<double>(_entry_pred_birth_rate, 0, 100));
    _pred_config.set_energy_consumption(    entry_to_value<long>(_entry_pred_energy_consumption, 0, MAXUI));
    _pred_config.set_satiation_consumption( entry_to_value<long>(_entry_pred_satiation_consumption, 0, MAXUI));
    _pred_config.set_max_age(               entry_to_value<long>(_entry_pred_max_age, 1, MAXUI));
    _pred_config.set_max_satiation(         entry_to_value<long>(_entry_pred_max_satiation, 1, MAXUI));
    _pred_config.set_max_energy(            entry_to_value<long>(_entry_pred_max_energy, 1, MAXUI));
    return _pred_config;
}



/** \brief Update configuration of all predators.

    Extract a new predator configuration object from the GUI and apply to all
    predators. The configuration of predators is scaled (not replaced).

    Thread-safe. Can be called during the simulation.
*/
void
MainWindow::update_predators() {
    PredatorConfig _pred_config = create_predator_config();
    std::shared_ptr<AbstractWorld> abstract_world = _visual_world->get_abstract_world();
    abstract_world->set_config(_pred_config);
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_world_pred_init_number_focus_out_event(GdkEventFocus* event) {
    on_entry_world_pred_init_number_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_world_pred_init_number_activate() {
    // nothing to do
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_pred_birth_rate_focus_out_event(GdkEventFocus* event) {
    on_entry_pred_birth_rate_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_pred_birth_rate_activate() {
    update_predators();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_pred_energy_consumption_focus_out_event(GdkEventFocus* event) {
    on_entry_pred_energy_consumption_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_pred_energy_consumption_activate() {
    update_predators();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_pred_satiation_consumption_focus_out_event(GdkEventFocus* event) {
    on_entry_pred_satiation_consumption_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_pred_satiation_consumption_activate() {
    update_predators();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_pred_max_age_focus_out_event(GdkEventFocus* event) {
    on_entry_pred_max_age_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_pred_max_age_activate() {
    update_predators();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_pred_max_satiation_focus_out_event(GdkEventFocus* event) {
    on_entry_pred_max_satiation_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_pred_max_satiation_activate() {
    update_predators();
}



/** \brief Signal handler.
*/
bool
MainWindow::on_entry_pred_max_energy_focus_out_event(GdkEventFocus* event) {
    on_entry_pred_max_energy_activate();
}



/** \brief Signal handler.
*/
void
MainWindow::on_entry_pred_max_energy_activate() {
    update_predators();
}



/** \brief Signal handler.
*/
void
MainWindow::on_button_prey_push_preys() {
    long n = entry_to_value(_entry_prey_push_n_preys, (long) 0, (long) MAXUI);
    std::shared_ptr<AbstractWorld> abstract_world = _visual_world->get_abstract_world();
    if (_stop) {
        abstract_world->push_preys(n);
    }
    else {
        abstract_world->push_preys_before_next_run(n);
    }
    _visual_world->force_redraw();
}



/** \brief Signal handler.
*/
void
MainWindow::on_button_pred_push_predators() {
    long n = entry_to_value(_entry_pred_push_n_predators, (long) 0, (long) MAXUI);
    std::shared_ptr<AbstractWorld> abstract_world = _visual_world->get_abstract_world();
    if (_stop) {
        abstract_world->push_predators(n);
    }
    else {
        abstract_world->push_predators_before_next_run(n);
    }
    _visual_world->force_redraw();
}



/** \brief Signal handler. Pass number of threads to abstract world.
*/
bool
MainWindow::on_entry_sim_number_of_threads_focus_out_event(GdkEventFocus* event) {
    on_entry_sim_number_of_threads_activate();
}



/** \brief Signal handler. Pass number of threads to abstract world.
*/
void
MainWindow::on_entry_sim_number_of_threads_activate() {
    long n = entry_to_value(_entry_sim_number_of_threads, (long) 0, (long) MAXUL);
    std::shared_ptr<AbstractWorld> abstract_world = _visual_world->get_abstract_world();
    n = abstract_world->set_number_of_threads(n);
    _entry_sim_number_of_threads.set_text(Helpers::to_str(n));
}


/** \brief Close program by delete event.
*/
bool
MainWindow::on_delete_event(GdkEventAny* event) {
    save_settings();
    remove();
    Gtk::Window::on_delete_event(event);
}


/** \brief Close program.
*/
void
MainWindow::close_sim() {
    save_settings();
    hide();
}


void
MainWindow::show_about() {
    AboutWindow about;
    about.run();
}

void
MainWindow::on_sw_visual_world_value_changed() {
    _visual_world->force_redraw();
}


/** \brief Save setting to an INI file.
*/
void
MainWindow::save_settings() {

    // window
    _ini_parser.set("window", nullptr);
    _ini_parser.set("window:width", Helpers::to_str(get_allocation().get_width()).c_str());
    _ini_parser.set("window:height", Helpers::to_str(get_allocation().get_height()).c_str());
    _ini_parser.set("window:hdiv_pos", Helpers::to_str(_hpaned_main.get_position()).c_str());
    _ini_parser.set("window:vdiv_pos", Helpers::to_str(_vpaned_main.get_position()).c_str());

    // simulation
    _ini_parser.set("simulation", nullptr);
    _ini_parser.set("simulation:number_of_cycles", _entry_sim_cycles.get_text().c_str());
    _ini_parser.set("simulation:number_of_threads", _entry_sim_number_of_threads.get_text().c_str());
    _ini_parser.set("simulation:show_info", Helpers::to_str(_ref_toggle_action_stats->get_active()).c_str());
    _ini_parser.set("simulation:draw_world", Helpers::to_str(_ref_toggle_action_world->get_active()).c_str());
    _ini_parser.set("simulation:draw_graph", Helpers::to_str(_ref_toggle_action_graph->get_active()).c_str());

    // world
    _ini_parser.set("world", nullptr);
    _ini_parser.set("world:prey_init_number", _entry_world_prey_init_number.get_text().c_str());
    _ini_parser.set("world:pred_init_number", _entry_world_pred_init_number.get_text().c_str());
    _ini_parser.set("world:size_x", _entry_world_size_x.get_text().c_str());
    _ini_parser.set("world:size_y", _entry_world_size_y.get_text().c_str());

    // graph
    _ini_parser.set("graph", nullptr);
    _ini_parser.set("graph:last_pos", Helpers::to_str(_check_button_graph_vis_pos.get_active()).c_str());
    _ini_parser.set("graph:max_zoom", Helpers::to_str(_check_button_graph_vis_zoom.get_active()).c_str());
    _ini_parser.set("graph:start_pos", _entry_graph_vis_pos.get_text().c_str());
    _ini_parser.set("graph:zoom_range", _entry_graph_vis_zoom.get_text().c_str());

    // plant settings
    _ini_parser.set("plant", nullptr);
    _ini_parser.set("plant:max_energy", _entry_plant_max_energy.get_text().c_str());
    _ini_parser.set("plant:growth_rate", _entry_plant_growth_rate.get_text().c_str());

    // prey settings
    _ini_parser.set("prey", nullptr);
    _ini_parser.set("prey:birth_rate", _entry_prey_birth_rate.get_text().c_str());
    _ini_parser.set("prey:energy_consumption", _entry_prey_energy_consumption.get_text().c_str());
    _ini_parser.set("prey:satiation_consumption", _entry_prey_satiation_consumption.get_text().c_str());
    _ini_parser.set("prey:max_age", _entry_prey_max_age.get_text().c_str());
    _ini_parser.set("prey:max_satiation", _entry_prey_max_satiation.get_text().c_str());
    _ini_parser.set("prey:max_energy", _entry_prey_max_energy.get_text().c_str());
    _ini_parser.set("prey:push_n_preys", _entry_prey_push_n_preys.get_text().c_str());

    // predator settings
    _ini_parser.set("pred", nullptr);
    _ini_parser.set("pred:birth_rate", _entry_pred_birth_rate.get_text().c_str());
    _ini_parser.set("pred:energy_consumption", _entry_pred_energy_consumption.get_text().c_str());
    _ini_parser.set("pred:satiation_consumption", _entry_pred_satiation_consumption.get_text().c_str());
    _ini_parser.set("pred:max_age", _entry_pred_max_age.get_text().c_str());
    _ini_parser.set("pred:max_satiation", _entry_pred_max_satiation.get_text().c_str());
    _ini_parser.set("pred:max_energy", _entry_pred_max_energy.get_text().c_str());
    _ini_parser.set("pred:push_n_predators", _entry_pred_push_n_predators.get_text().c_str());

    _ini_parser.dump_ini();
}



/** \brief Load setting from an INI file.
*/
void
MainWindow::load_settings() {
    int width = 0;
    int height = 0;
    int hdiv_pos = 0;
    int vdiv_pos = 0;

    // simulation settings
    _entry_sim_cycles.                  set_text(_ini_parser.get_string("simulation:number_of_cycles", "10000"));
    _entry_sim_number_of_threads.       set_text(_ini_parser.get_string("simulation:number_of_threads", "2"));

    _ref_toggle_action_stats->          set_active(_ini_parser.get_bool("simulation:show_info", true));
    _ref_toggle_action_graph->          set_active(_ini_parser.get_bool("simulation:draw_graph", true));
    _ref_toggle_action_world->          set_active(_ini_parser.get_bool("simulation:draw_world", true));

    // world settings
    _entry_world_prey_init_number.      set_text(_ini_parser.get_string("world:prey_init_number", "1000"));
    _entry_world_pred_init_number.      set_text(_ini_parser.get_string("world:pred_init_number", "300"));
    _entry_world_size_x.                set_text(_ini_parser.get_string("world:size_x", "128"));
    _entry_world_size_y.                set_text(_ini_parser.get_string("world:size_y", "32"));

    // graph settings
    _entry_graph_vis_pos.               set_text(_ini_parser.get_string("graph:start_pos", "0"));
    _entry_graph_vis_zoom.              set_text(_ini_parser.get_string("graph:zoom_range", "1500"));
    _check_button_graph_vis_pos.        set_active(_ini_parser.get_bool("graph:last_pos", true));
    _check_button_graph_vis_zoom.       set_active(_ini_parser.get_bool("graph:max_zoom", false));

    // plant settings
    _entry_plant_max_energy.            set_text(_ini_parser.get_string("plant:max_energy", "1200"));
    _entry_plant_growth_rate.           set_text(_ini_parser.get_string("plant:growth_rate", Helpers::to_str(0.05).c_str()));

    // prey setting
    _entry_prey_birth_rate.             set_text(_ini_parser.get_string("prey:birth_rate", Helpers::to_str(0.05).c_str()));
    _entry_prey_energy_consumption.     set_text(_ini_parser.get_string("prey:energy_consumption", "100"));
    _entry_prey_satiation_consumption.  set_text(_ini_parser.get_string("prey:satiation_consumption", "100"));
    _entry_prey_max_age.                set_text(_ini_parser.get_string("prey:max_age", "50"));
    _entry_prey_max_satiation.          set_text(_ini_parser.get_string("prey:max_satiation", "1000"));
    _entry_prey_max_energy.             set_text(_ini_parser.get_string("prey:max_energy", "1500"));
    _entry_prey_push_n_preys.           set_text(_ini_parser.get_string("prey:push_n_preys", "1000"));

    // predator settings
    _entry_pred_birth_rate.             set_text(_ini_parser.get_string("pred:birth_rate", Helpers::to_str(0.05).c_str()));
    _entry_pred_energy_consumption.     set_text(_ini_parser.get_string("pred:energy_consumption", "100"));
    _entry_pred_satiation_consumption.  set_text(_ini_parser.get_string("pred:satiation_consumption", "50"));
    _entry_pred_max_age.                set_text(_ini_parser.get_string("pred:max_age", "100"));
    _entry_pred_max_satiation.          set_text(_ini_parser.get_string("pred:max_satiation", "2000"));
    _entry_pred_max_energy.             set_text(_ini_parser.get_string("pred:max_energy", "1000"));
    _entry_pred_push_n_predators.       set_text(_ini_parser.get_string("pred:push_n_predators", "1000"));

    // restore window
    width = _ini_parser.get_int("window:width", 900);
    height = _ini_parser.get_int("window:height", 700);
    hdiv_pos = _ini_parser.get_int("window:hdiv_pos", 320);
    vdiv_pos = _ini_parser.get_int("window:vdiv_pos", 520);

    resize(width, height);
    _hpaned_main.set_position(hdiv_pos);
    _vpaned_main.set_position(vdiv_pos);
}


} /* namespace ppsim */


















