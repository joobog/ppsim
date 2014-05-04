/**
    \file IniParser.cpp
    \author Eugen Betke
    \brief Wrapper to the iniparser.
*/



#include "IniParser.h"
#include "RuntimeError.h"
#include <cstring>
#include <cerrno>
#include <iostream>
#include <unistd.h>
#include <sys/types.h>
#include <pwd.h>
#include <sys/stat.h>

namespace ppsim {

IniParser::IniParser(const char* filename) :
    _ini{nullptr}
{
	using std::string;

    struct passwd* pw{getpwuid(getuid())};
    const string homedir{pw->pw_dir};
    const string dir{"/.ppsim/"};
    const string path{homedir + dir};
    _abs_filename = path + filename;

    // create directory
    struct stat sb{};
    int stat_err = stat(path.c_str(), &sb);
    if (stat_err !=0) {
        int mkdir_err = mkdir(path.c_str(), S_IRWXU);
        if (mkdir_err != 0) {
            throw RuntimeError{"Couldn't create directory: " + path};
        }
    }

    _ini = iniparser_load(_abs_filename.c_str());
    if (!_ini) {
        // create file
        FILE* file = fopen(_abs_filename.c_str(), "w");
        if(!file) {
            throw RuntimeError("Couldn't create file: " + _abs_filename);
        }
        fclose(file);
        // load file again
        _ini = iniparser_load(_abs_filename.c_str());
        if(!_ini) {
            throw RuntimeError{"Couldn't open file: " + _abs_filename};
        }
    }
}



IniParser::~IniParser(){
    iniparser_freedict(_ini);
}



void
IniParser::dump(FILE* f) {
    iniparser_dump(_ini, f);
}



void
IniParser::dump_ini() {
    FILE* file = fopen(_abs_filename.c_str(), "w");
    iniparser_dump_ini(_ini, file);
    fclose(file);
}



bool
IniParser::set(const char* entry, const char* value) {
    return iniparser_set(_ini, entry, value);
}



char*
IniParser::get_string(const char* key, const char* def) {
    return iniparser_getstring(_ini, key, const_cast<char*>(def));
}



int
IniParser::get_int(const char* key, int not_found) {
    return iniparser_getint(_ini, key, not_found);
}



bool
IniParser::get_bool(const char* key, int not_found) {
    return iniparser_getboolean(_ini, key, not_found);
}

} /* namespace ppsim */
