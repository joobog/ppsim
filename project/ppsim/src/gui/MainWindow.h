/**
    \file MainWindow.h
    \author Eugen Betke
    \brief Main Window.
*/



#ifndef MAINWINDOW_H_
#define MAINWINDOW_H_

#ifdef TEST_MODE
#define PROTECTED public
#define PRIVATE public
#else
#define PROTECTED protected
#define PRIVATE private
#endif

#define MAXUI 10000000
#define MAXUL 10000000

#include <memory>

#include "VisualWorld.h"
#include "AbstractWorld.h"
#include "Graph.h"
#include "Helpers.h"
#include "PlantConfig.h"
#include "IniParser.h"
#include "AboutWindow.h"

#include <stdlib.h>
#include <gtkmm.h>
#include <glibmm/thread.h>
#include <glibmm/dispatcher.h>


namespace ppsim {

/** \brief Main Window.
*/
class MainWindow : public Gtk::Window {
public:
	MainWindow();
	virtual ~MainWindow();
	void save_settings();
	void load_settings();

PROTECTED:
    void on_changed_size();

Gtk::Box _vbox_main;
Gtk::Paned _vpaned_main;
    Glib::RefPtr<Gtk::UIManager> _refUIManager;
    Glib::RefPtr<Gtk::ActionGroup> _refActionGroup;
        void on_action_export();
        void close_sim();
        void show_about();
    Glib::RefPtr<Gtk::ToggleAction> _ref_toggle_action_graph;
        void on_toggle_action_graph();
    Glib::RefPtr<Gtk::ToggleAction> _ref_toggle_action_world;
        void on_toggle_action_world();
    Glib::RefPtr<Gtk::ToggleAction> _ref_toggle_action_stats;
        void on_toggle_action_stats();

    Gtk::Paned _hpaned_main;
        Gtk::ScrolledWindow _sw_ci_panel;       // scrolled window control info panel
    	Gtk::Box _vbox_control;

            // simulation
            Gtk::Frame _frame_simulation;
                Gtk::Box _vbox_simulation;
                    // start, stop
                    Gtk::Grid _grid_control_buttons;
                        Gtk::Button _button_sim_start_stop;
                            sigc::connection _conn_start_stop;
                            void on_button_sim_start_clicked();
                            void on_button_sim_stop_clicked();
                        Gtk::Button _button_sim_next_cycle;
                            void on_button_sim_next_cycle_clicked();
                    Gtk::Grid _grid_sim_settings;
                        Gtk::Label _label_sim_cycles;
                        Gtk::Entry _entry_sim_cycles;
                        Gtk::Label _label_sim_number_of_threads;
                        Gtk::Entry _entry_sim_number_of_threads;
                            bool on_entry_sim_number_of_threads_focus_out_event(GdkEventFocus* event);
                            void on_entry_sim_number_of_threads_activate();

            // info
            Gtk::Frame _frame_info;
                Gtk::Box _vbox_info;

                    Gtk::Frame _frame_info_sim;
                        Gtk::Grid _grid_info_sim;
                            Gtk::Label _label_info_cycle_counter;
                            Gtk::Label _label_info_cycle_counter_display;
                            Gtk::Label _label_info_frame_rate;
                            Gtk::Label _label_info_frame_rate_display;
                            Gtk::Label _label_info_time_start;
                            Gtk::Label _label_info_time_start_display;
                            Gtk::Label _label_info_time_stop;
                            Gtk::Label _label_info_time_stop_display;
                            Gtk::Label _label_info_duration;
                            Gtk::Label _label_info_duration_display;
                    Gtk::Frame _frame_info_pop_stat;
                        Gtk::Grid _grid_info_pop_stat;
                            Gtk::Label _label_info_pop_stat_preys;
                            Gtk::Label _label_info_pop_stat_preds;
                            Gtk::Label _label_info_total;
                            Gtk::Label _label_info_preys_total_display;
                            Gtk::Label _label_info_preds_total_display;

                    Gtk::Frame _frame_info_dead_stat;
                        Gtk::Grid _grid_info_dead_stat;
                            Gtk::Label _label_info_dead_stat_preys;
                            Gtk::Label _label_info_dead_stat_preds;
                            Gtk::Label _label_info_aged;
                            Gtk::Label _label_info_preys_aged_display;
                            Gtk::Label _label_info_preds_aged_display;
                            Gtk::Label _label_info_eaten;
                            Gtk::Label _label_info_preys_eaten_display;
                            Gtk::Label _label_info_preds_eaten_display;
                            Gtk::Label _label_info_starved;
                            Gtk::Label _label_info_preys_starved_display;
                            Gtk::Label _label_info_preds_starved_display;
                            Gtk::Label _label_info_underfed;
                            Gtk::Label _label_info_preys_underfed_display;
                            Gtk::Label _label_info_preds_underfed_display;


	Gtk::Grid hbox;

        Gtk::Notebook notebook_settings;

        // tab world settings
        Gtk::Box _vbox_world_settings;

            Gtk::Grid _grid_world;
                Gtk::Entry _entry_world_size_x;
                    bool on_entry_world_size_x_focus_out_event(GdkEventFocus* event);
                    void on_entry_world_size_x_activate();
                Gtk::Entry _entry_world_size_y;
                    bool on_entry_world_size_y_focus_out_event(GdkEventFocus* event);
                    void on_entry_world_size_y_activate();
                Gtk::Label _label_world_size_x;
                Gtk::Label _label_world_size_y;
                Gtk::Button _button_world_size_change;
                    void on_button_world_size_change();
                Gtk::Entry _entry_world_prey_init_number;
                Gtk::Label _label_world_prey_init_number;
                    bool on_entry_world_prey_init_number_focus_out_event(GdkEventFocus* event);
                    void on_entry_world_prey_init_number_activate();
                Gtk::Entry _entry_world_pred_init_number;
                Gtk::Label _label_world_pred_init_number;
                    bool on_entry_world_pred_init_number_focus_out_event(GdkEventFocus* event);
                    void on_entry_world_pred_init_number_activate();

        // tab plant
        Gtk::Grid _grid_plant_param;
            Gtk::Label _label_plant_max_energy;
            Gtk::Entry _entry_plant_max_energy;
                bool on_entry_plant_max_energy_focus_out_event(GdkEventFocus* event);
                void on_entry_plant_max_energy_activate();
            Gtk::Label _label_plant_growth_rate;
            Gtk::Entry _entry_plant_growth_rate;
                bool on_entry_plant_growth_rate_focus_out_event(GdkEventFocus* event);
                void on_entry_plant_growth_rate_activate();

        // tab prey
        Gtk::Frame _frame_prey;
            Gtk::Grid _grid_prey_settings;
                Gtk::Entry _entry_prey_birth_rate;
                Gtk::Label _label_prey_birth_rate;
                    bool on_entry_prey_birth_rate_focus_out_event(GdkEventFocus* event);
                    void on_entry_prey_birth_rate_activate();
                Gtk::Entry _entry_prey_energy_consumption;
                Gtk::Label _label_prey_energy_consumption;
                    bool on_entry_prey_energy_consumption_focus_out_event(GdkEventFocus* event);
                    void on_entry_prey_energy_consumption_activate();
                Gtk::Entry _entry_prey_satiation_consumption;
                Gtk::Label _label_prey_satiation_consumption;
                    bool on_entry_prey_satiation_consumption_focus_out_event(GdkEventFocus* event);
                    void on_entry_prey_satiation_consumption_activate();
                Gtk::Entry _entry_prey_max_age;
                Gtk::Label _label_prey_max_age;
                    bool on_entry_prey_max_age_focus_out_event(GdkEventFocus* event);
                    void on_entry_prey_max_age_activate();
                Gtk::Entry _entry_prey_max_satiation;
                Gtk::Label _label_prey_max_satiation;
                    bool on_entry_prey_max_satiation_focus_out_event(GdkEventFocus* event);
                    void on_entry_prey_max_satiation_activate();
                Gtk::Entry _entry_prey_max_energy;
                Gtk::Label _label_prey_max_energy;
                    bool on_entry_prey_max_energy_focus_out_event(GdkEventFocus* event);
                    void on_entry_prey_max_energy_activate();
                Gtk::Label _label_prey_push_n_preys;
                Gtk::Button _button_prey_push_preys;
                    void on_button_prey_push_preys();
                Gtk::Entry _entry_prey_push_n_preys;

        // tab predator
        Gtk::Frame _frame_pred;
            Gtk::Grid _grid_pred_settings;
                Gtk::Entry _entry_pred_birth_rate;
                Gtk::Label _label_pred_birth_rate;
                    bool on_entry_pred_birth_rate_focus_out_event(GdkEventFocus* event);
                    void on_entry_pred_birth_rate_activate();
                Gtk::Entry _entry_pred_energy_consumption;
                Gtk::Label _label_pred_energy_consumption;
                    bool on_entry_pred_energy_consumption_focus_out_event(GdkEventFocus* event);
                    void on_entry_pred_energy_consumption_activate();
                Gtk::Entry _entry_pred_satiation_consumption;
                Gtk::Label _label_pred_satiation_consumption;
                    bool on_entry_pred_satiation_consumption_focus_out_event(GdkEventFocus* event);
                    void on_entry_pred_satiation_consumption_activate();
                Gtk::Entry _entry_pred_max_age;
                Gtk::Label _label_pred_max_age;
                    bool on_entry_pred_max_age_focus_out_event(GdkEventFocus* event);
                    void on_entry_pred_max_age_activate();
                Gtk::Entry _entry_pred_max_satiation;
                Gtk::Label _label_pred_max_satiation;
                    bool on_entry_pred_max_satiation_focus_out_event(GdkEventFocus* event);
                    void on_entry_pred_max_satiation_activate();
                Gtk::Entry _entry_pred_max_energy;
                Gtk::Label _label_pred_max_energy;
                    bool on_entry_pred_max_energy_focus_out_event(GdkEventFocus* event);
                    void on_entry_pred_max_energy_activate();
                Gtk::Label _label_pred_push_n_predators;
                Gtk::Button _button_pred_push_predators;
                    void on_button_pred_push_predators();
                Gtk::Entry _entry_pred_push_n_predators;

        Gtk::Box _vbox_world_vis_visual_world;
            Gtk::ScrolledWindow _sw_visual_world;
                void on_sw_visual_world_signal_scroll_event(Gtk::Allocation& a);
                void on_sw_visual_world_value_changed();
                std::shared_ptr<VisualWorld> _visual_world;
            Gtk:: Grid _grid_world_vis_settings;
                Gtk::Label _label_world_vis_zoom;
                Gtk::Entry _entry_world_vis_zoom;
                    bool on_entry_world_vis_zoom_focus_out_event(GdkEventFocus* event);
                    void on_entry_world_vis_zoom_activate();
                Glib::RefPtr<Gtk::Adjustment> _adj_world_zoom;
                    void on_adj_world_zoom_value_changed();
                Gtk::Scale _scale_world_vis_zoom;


        Gtk::ScrolledWindow _sw_statistics;
            std::shared_ptr<Graph> _graph;

        Gtk::Grid _grid_graph_vis;
            Gtk::Label _label_graph_vis_zoom;
            Gtk::Entry _entry_graph_vis_zoom;
                bool on_entry_graph_vis_zoom_focus_out_event(GdkEventFocus* event);
                void on_entry_graph_vis_zoom_activate();
            Glib::RefPtr<Gtk::Adjustment> _adj_graph_vis_zoom;
            Gtk::Scale _scale_graph_vis_zoom;
                void on_graph_zoom_value_changed();
            Gtk::CheckButton _check_button_graph_vis_zoom;
                void on_check_button_graph_vis_zoom_clicked();
            Gtk::Label _label_graph_vis_pos;
            Gtk::Entry _entry_graph_vis_pos;
                bool on_entry_graph_vis_pos_focus_out_event(GdkEventFocus* event);
                void on_entry_graph_vis_pos_activate();
            Glib::RefPtr<Gtk::Adjustment> _adj_graph_vis_pos;
            Gtk::Scale _scale_graph_vis_pos;
                void on_graph_pos_value_changed();
            Gtk::CheckButton _check_button_graph_vis_pos;
                void on_check_button_graph_vis_pos_clicked();
            Gtk::Button _button_graph_vis_clear;
                void on_button_graph_vis_clear_clicked();


        virtual bool on_delete_event(GdkEventAny* event);

PRIVATE:
    bool _stop;
    float _frame_rate;
    timespec _start_time;
    timespec _stop_time;

    Glib::Dispatcher _dispatcher_visualize_world;
    Glib::Dispatcher _dispatcher_visualize_graph;
    Glib::Dispatcher _dispatcher_deactivate_control;
    Glib::Dispatcher _dispatcher_activate_control;
    Glib::Dispatcher _dispatcher_set_start_time;
    Glib::Dispatcher _dispatcher_set_stop_time;
    Glib::Dispatcher _dispatcher_stop;
    Glib::Dispatcher _dispatcher_update_info;
    Glib::Dispatcher _dispatcher_frame_rate;

    Glib::Thread* _thread;
    void work_thread(unsigned long);
    void compute_visual_area();
    void sync_world_adj();

    void set_start_time();
    void set_stop_time();
    void visualize_world();
    void visualize_graph();
    void activate_control();
    void deactivate_control();

    void update_info();
    void update_frame_rate(float frame_rate);
    template <typename T> static T entry_to_value(Gtk::Entry& entry, const T min, const T max);

    PlantConfig create_plant_config();
    PreyConfig create_prey_config();
    PredatorConfig create_predator_config();

    void update_plants();
    void update_preys();
    void update_predators();

    IniParser _ini_parser;

}; // CMainWindow



/** \brief Converts string from an entry number.
    \param entry is an Gtkmm entry
    \param min is a number / lower bound
    \param max is a number / upper bound
    \return number between min and max

    It also checks if a number is the interval [min, max]. If not, the number is
     set to nearest value and updates the entry.
*/
template <typename T>
T
MainWindow::entry_to_value(Gtk::Entry& entry, const T min, const T max) {
    const std::string str_value = entry.get_text();
    const T value = atof(str_value.c_str());
    ppsim::Bounded<T> bounded(value, min, max);
    entry.set_text(ppsim::Helpers::to_str(bounded.get_value()));
    return bounded.get_value();
}

} /* namespace ppsim */

#endif /* MAINWINDOW_H_ */
