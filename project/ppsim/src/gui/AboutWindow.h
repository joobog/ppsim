#ifndef ABOUTWINDOW_H
#define ABOUTWINDOW_H

#include <gtkmm.h>

namespace ppsim {

class AboutWindow : public Gtk::Dialog
{
    public:
        AboutWindow();
        virtual ~AboutWindow();

    protected:
        Gtk::Grid _data;

        Gtk::Label _label_about_title;

        Gtk::Label _label_desc_name, _label_desc_text;
        Gtk::Label _label_about_name, _label_about_text;
        Gtk::Label _label_developers_name, _label_developers_text;
        Gtk::Label _label_license_name, _label_license_text;
};

} /* namespace ppsim */

#endif // ABOUTWINDOW_H
