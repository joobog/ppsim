#include "AboutWindow.h"
#include <iostream>

//using namespace Pango;

namespace ppsim {
	using Gtk::ALIGN_END;
	using Gtk::ALIGN_START;
AboutWindow::AboutWindow() :

    _label_license_name("License:", ALIGN_END, ALIGN_START), _label_license_text("GPL", ALIGN_START, ALIGN_START),
    _label_desc_name("Description:", ALIGN_END, ALIGN_START), _label_desc_text("", ALIGN_START, ALIGN_START),
    _label_about_name("Initial Version:", ALIGN_END, ALIGN_START), _label_about_text("", ALIGN_START, ALIGN_START),
    _label_developers_name("Developer(s):", ALIGN_END, ALIGN_START), _label_developers_text("", ALIGN_START, ALIGN_START)
{
    using namespace Gtk;
    using namespace Gdk;

    set_title("About");


    // title
    Pango::FontDescription font;
    font.set_size(20000);
    _label_about_title.override_font(font);
    _label_about_title.set_text("Prey-Predator Simulator");


    // description

    _label_desc_text.set_text(
        "The virtual world is a place, where plants, preys and predators live together and are involved in a food chain (predators eat preys and preys eat plants). "
        "Due the strong interdependency, caused by the food chain, the prey and predator populations have a strong impact on each other. The simulator shows how "
        "the both populations influence each other.");

    _label_desc_text.set_line_wrap();


    // about
    _label_about_text.set_text(
        "The initial version of the simulator was developed in the scope of the project \"Parallel Computing\" "
        "at University of Hamburg in 2013/14. "
        "The project was supervised by Prof. Dr. Thomas Ludwig, Dr. Julian Kunkel and Nathanael Hübbe.");
    _label_about_text.set_line_wrap();


    // developers
    _label_developers_text.set_label("Eugen Betke (eugen.betke@gmail.com)");




    Box* vbox = get_vbox();
    vbox->pack_start(_label_about_title);


    _data.set_halign(ALIGN_START);
    _data.set_valign(ALIGN_START);
    _data.attach(_label_license_name, 0, 0, 1, 1);
    _data.attach(_label_license_text, 1, 0, 1, 1);
    _data.attach(_label_desc_name, 0, 1, 1, 1);
    _data.attach(_label_desc_text, 1, 1, 1, 1);
    _data.attach(_label_about_name, 0, 2, 1, 1);
    _data.attach(_label_about_text, 1, 2, 1, 1);
    _data.attach(_label_developers_name, 0, 3, 1, 1);
    _data.attach(_label_developers_text, 1, 3, 1, 1);
    vbox->pack_start(_data);


    Button* button_ok = add_button("OK", Gtk::RESPONSE_OK);
    show_all_children();
}

AboutWindow::~AboutWindow()
{
    //dtor
}

} /* namespace ppsim */
