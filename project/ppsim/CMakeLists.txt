cmake_minimum_required (VERSION 2.8)
project ( ppsim )


set (Tutorial_VERSION_MAJOR 1)
set (Tutorial_VERSION_MINOR 0)


configure_file (
	"${PROJECT_SOURCE_DIR}/ppsim_config.h.in"
	"${PROJECT_BINARY_DIR}/ppsim_config.h"
	)


set ( CMAKE_CXX_FLAGS "-std=c++11 -pthread" )


find_package ( PkgConfig )
find_package ( Boost REQUIRED)


if ( PKG_CONFIG_FOUND )
	pkg_check_modules ( GTKMM gtkmm-3.0 )
	pkg_check_modules ( GLIB glib-2.0 )
	pkg_check_modules ( CAIROMM cairomm-1.0 )
endif ( PKG_CONFIG_FOUND )

link_directories ( 
	${GTKMM_LIBRARY_DIRS}
	${GLIB_LIBRARY_DIRS}
	${CAIROMM_LIBRARY_DIRS}
	"${PROJECT_SOURCE_DIR}/../iniparser"
 	)


set ( LOGIC ${PROJECT_SOURCE_DIR}/src/logic )
set ( WORLD ${PROJECT_SOURCE_DIR}/src/world )
set ( ORGANISMS ${PROJECT_SOURCE_DIR}/src/organisms )
set ( GUI ${PROJECT_SOURCE_DIR}/src/gui )


include_directories (
	"${PROJECT_BINARY_DIR}" 
	"${PROJECT_SOURCE_DIR}" 
	${GUI}
	${WORLD}
	${ORGANISMS}
	${LOGIC}
	${GTKMM_INCLUDE_DIRS}
	${GLIB_INCLUDE_DIRS}
	${CAIROMM_INCLUDE_DIRS}
	"${PROJECT_SOURCE_DIR}/../iniparser/src"
	)


add_executable ( ppsim src/ppsim.cpp 
	${GUI}/Graph.cpp
	${GUI}/MainWindow.cpp
	${GUI}/VisualWorld.cpp
	${GUI}/IniParser.cpp
	${GUI}/AboutWindow.cpp
	${GUI}/Cell.cpp
	${GUI}/FilePtr.cpp
	${LOGIC}/RuntimeError.cpp
	${LOGIC}/Barrier.cpp
	${WORLD}/AbstractWorld.cpp
	${WORLD}/Field.cpp
	${ORGANISMS}/PlantConfig.cpp
	${ORGANISMS}/OrganismConfig.cpp
	${ORGANISMS}/Prey.cpp
	${ORGANISMS}/Creature.cpp
	${ORGANISMS}/Predator.cpp
	${ORGANISMS}/PredatorConfig.cpp
	${ORGANISMS}/PreyConfig.cpp
	${ORGANISMS}/Plant.cpp
	${ORGANISMS}/CreatureConfig.cpp
	${ORGANISMS}/LivingState.cpp
	${ORGANISMS}/Organism.cpp
	)


target_link_libraries ( ppsim 
	${GTKMM_LIBRARIES} 
	${GLIB_LIBRARIES} 
	${CAIROMM_LIBRARIES} 
	iniparser
	)
