/**
    \file IniParser.h
    \author Eugen Betke
    \brief Wrapper to the iniparser.
*/



#ifndef INIPARSER_H
#define INIPARSER_H

#include <stdio.h>
#include <string>

extern "C" {
    #include "iniparser.h"
}

namespace ppsim {

/** \brief Wrapper to the iniparser. (Incomplete)

    Only needed functions were wrapped. This wrapper is incomplete. The original
    ini parser was written in C and can be downloaded from this website:

    http://ndevilla.free.fr/iniparser/
*/
class IniParser
{
    public:
        IniParser(const char* filename);
        virtual ~IniParser();
        void dump(FILE* f);
        void dump_ini();

        bool set(const char* entry, const char* value);

        //void unset(const char* entry);
        //bool find_entry(const char* entry);
        bool get_bool(const char* key, int not_found);
        //double get_double(const char* key, double not_found);
        int get_int(const char* key, int not_found);
        char* get_string(const char* key, const char* def);
        //char ** get_sec_keys(char* section);
        //char * get_sec_n_keys(char* section);

    private:
        dictionary* _ini;
        std::string _abs_filename;
};

} /* namespace ppsim */

#endif // INIPARSER_H
