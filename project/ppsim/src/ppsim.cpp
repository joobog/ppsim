#include "MainWindow.h"
#include <gtkmm/application.h>
#include <cppunit/ui/text/TestRunner.h>
#include <cppunit/CompilerOutputter.h>
#include <cppunit/extensions/HelperMacros.h>
#include <locale>



/** \brief Main function (gtkmm3 < 3.4)
 */
/*
int main(int argc, char *argv[]) {
    Gtk::Main app(argc, argv);

    std::locale::global(std::locale::classic());

    #ifdef TEST_MODE
        CppUnit::Test* suite = CppUnit::TestFactoryRegistry::getRegistry().makeTest();
        CppUnit::TextUi::TestRunner runner;
        runner.addTest( suite );
        runner.setOutputter( new CppUnit::CompilerOutputter( &runner.result(), std::cerr ));
        bool wasSuccessful = runner.run();
        ppsim::MainWindow ppmodel;
        Gtk::Main::run(ppmodel);
        return wasSuccessful ? 0 : 1;
    #else
        ppsim::MainWindow ppmodel;
        Gtk::Main::run(ppmodel);
        return EXIT_SUCCESS;
    #endif
}
//*/


/** \brief Main function (gtkmm3 >= 3.4)
 */
//*
int main(int argc, char *argv[]) {
    std::locale::global(std::locale::classic());

    Glib::RefPtr<Gtk::Application> app = Gtk::Application::create(argc, argv);

    #ifdef TEST_MODE
        CppUnit::Test* suite = CppUnit::TestFactoryRegistry::getRegistry().makeTest();
        CppUnit::TextUi::TestRunner runner;
        runner.addTest( suite );
        runner.setOutputter( new CppUnit::CompilerOutputter( &runner.result(), std::cerr ));
        bool wasSuccessful = runner.run();
        ppsim::MainWindow ppmodel;
        app->run(ppmodel);
        return wasSuccessful ? 0 : 1;
    #else
        ppsim::MainWindow ppmodel;
        app->run(ppmodel);
        return EXIT_SUCCESS;
    #endif
}
//*/
