#include "MainWindowUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( MainWindowUnitTest );

MainWindowUnitTest::MainWindowUnitTest() :
    precision(0.000000001)
{
}

MainWindowUnitTest::~MainWindowUnitTest()
{
}

void
MainWindowUnitTest::setUp() {
}

void
MainWindowUnitTest::tearDown() {
}

/*
    template <typename T>
    T
    MainWindow::entry_to_value(Entry& entry, const T min, const T max) {
        const string str_value = entry.get_text();
        const T value = atof(str_value.c_str());
        Bounded<T> bounded(value, min, max);
        entry.set_text(Helpers::to_str(bounded.get_value()));
        return bounded.get_value();
    }
*/

void
MainWindowUnitTest::test_entry_to_ui() {
	using namespace ppsim;
    entry.set_text("10034");
    unsigned int value = 10034;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 10034, MainWindow::entry_to_value<unsigned int>(entry, 0, 10000000) );
    CPPUNIT_ASSERT(!strcmp("10034", entry.get_text().c_str()));
}

void
MainWindowUnitTest::test_entry_to_l() {
	using namespace ppsim;
    entry.set_text("10034");
    long value = 10034;
    CPPUNIT_ASSERT_EQUAL( (long) 10034, MainWindow::entry_to_value<long>(entry, 0, 10000000) );
    CPPUNIT_ASSERT(!strcmp("10034", entry.get_text().c_str()));
}

void
MainWindowUnitTest::test_entry_to_d() {
	using namespace std;
	using namespace ppsim;
    string value_str_test = "0.02";
    double value_test = 0.02;

    entry.set_text(value_str_test);

    CPPUNIT_ASSERT_DOUBLES_EQUAL(value_test, MainWindow::entry_to_value<double>(entry, 0, 1), precision );

    const string value_str = entry.get_text();
    CPPUNIT_ASSERT_MESSAGE("Couldn't read double string from entry (error in: GTK-library)", !strcmp(value_str_test.c_str(), value_str.c_str()));

    const double value = atof(value_str.c_str());
    CPPUNIT_ASSERT_EQUAL_MESSAGE("Couldn't convert str to double (error in: std::atof())", value_test, value);

    double min = 0;
    double max = 100;
    Bounded<double> bounded(value, min, max);
    CPPUNIT_ASSERT_EQUAL_MESSAGE("Bounding value doesn't work (error in ppsim::Bounded class)", value_test, bounded.get_value());
}

