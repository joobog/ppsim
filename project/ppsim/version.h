#ifndef VERSION_H
#define VERSION_H

namespace AutoVersion{
	
	//Date Version Types
	static const char DATE[] = "03";
	static const char MONTH[] = "11";
	static const char YEAR[] = "2013";
	static const char UBUNTU_VERSION_STYLE[] = "13.11";
	
	//Software Status
	static const char STATUS[] = "Release";
	static const char STATUS_SHORT[] = "r";
	
	//Standard Version Type
	static const long MAJOR = 1;
	static const long MINOR = 0;
	static const long BUILD = 6;
	static const long REVISION = 27;
	
	//Miscellaneous Version Types
	static const long BUILDS_COUNT = 877;
	#define RC_FILEVERSION 1,0,6,27
	#define RC_FILEVERSION_STRING "1, 0, 6, 27\0"
	static const char FULLVERSION_STRING[] = "1.0.6.27";
	
	//These values are to keep track of your versioning state, don't modify them.
	static const long BUILD_HISTORY = 6;
	

}
#endif //VERSION_H
