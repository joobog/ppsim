#ifndef MAINWINDOWUNITTEST_H
#define MAINWINDOWUNITTEST_H

#include "MainWindow.h"
#include <gtkmm/entry.h>
#include <cppunit/extensions/HelperMacros.h>

class MainWindowUnitTest : public CppUnit::TestFixture
{
    public:
        MainWindowUnitTest();
        virtual ~MainWindowUnitTest();

    CPPUNIT_TEST_SUITE( MainWindowUnitTest );
    CPPUNIT_TEST( test_entry_to_ui );
    CPPUNIT_TEST( test_entry_to_l );
    CPPUNIT_TEST( test_entry_to_d );
    CPPUNIT_TEST_SUITE_END();

    public:
        void setUp();
        void tearDown();
        void test_entry_to_ui();
        void test_entry_to_l();
        void test_entry_to_d();
       // void test_entry_str();

    private:
        Gtk::Entry entry;
        double precision;
};

#endif // MAINWINDOWUNITTEST_H
