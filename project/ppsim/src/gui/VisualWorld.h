/**
    \file VisualWorld.h
    \author Eugen Betke
    \brief Visualization of the abstract world.
*/



#ifdef TEST_MODE
#define PROTECTED public
#define PRIVATE public
#else
#define PROTECTED protected
#define PRIVATE private
#endif

#ifndef VisualWorld_H_
#define VisualWorld_H_


#include "AbstractWorld.h"
#include "Graph.h"
#include "Cell.h"
#include <gtkmm/drawingarea.h>
#include <iostream>
#include <memory>

namespace ppsim {

/** \brief Visualization of the abstract world.
*/
class VisualWorld : public Gtk::DrawingArea {
public:
    VisualWorld();
    VisualWorld(
        TIndex size_x,
        TIndex size_y,
        PlantConfig plant_config,
        PreyConfig prey_config,
        PredatorConfig predator_config);
    virtual ~VisualWorld() {delete_visual_world();}

	std::shared_ptr<AbstractWorld> get_abstract_world() {return _abstract_world;}
	std::shared_ptr<Graph> get_graph() {return _graph;}

    void recreate_visual_world(
        TIndex size_x,
        TIndex size_y,
        PlantConfig plant_config,
        PreyConfig prey_config,
        PredatorConfig predator_config);

    void run(int cycles);
    void force_redraw();
    virtual bool on_draw(const Cairo::RefPtr<Cairo::Context> &cr);
    void register_graph(std::shared_ptr<Graph> graph);
    int get_height();
    int get_width();
    size_t get_max_size();
    void set_cell_outer_radius(TSize cell_outer_radius);
    TSize get_cell_outer_radius() {return _cell_outer_radius;}
    TSize get_cell_inner_radius() {return _cell_inner_radius;}
    void compute_visual_area(
        int visible_x,
        int visible_y,
        double scale_value_x,
        double scale_value_y,
        double scale_upper_x,
        double scale_upper_y);
    void disable() {_is_enabled = false;}
    void enable() {_is_enabled = true;}
    const bool is_enabled() const {return _is_enabled;}


PROTECTED:	// macro
    const double distance(const TPoint& a, const TPoint& b);

    TPosition point_to_pos(TPoint point);
    SPosRect pointrect_to_posrect(SPointRect& point_area);
    void create_visual_world(
        TIndex size_x,
        TIndex _size_y,
        PlantConfig plant_config,
        PreyConfig prey_config,
        PredatorConfig predator_config);
    void delete_visual_world() {_visual_world.clear();}

PRIVATE:	//macro
    bool _is_enabled;
    TSize _cell_outer_radius;
    TSize _cell_inner_radius;
    std::vector<std::vector<Cell>> _visual_world;
    std::shared_ptr<AbstractWorld> _abstract_world;
    std::shared_ptr<Graph> _graph;
    SPosRect _visible_area;
    Cairo::RefPtr<Cairo::Context> cairo_context;
};

} /* namespace ppsim */

#endif /* VisualWorld_H_ */
