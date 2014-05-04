/**
    \file VisualWorld.cpp
    \author Eugen Betke
    \brief Visualization of the abstract world.
*/



#include "VisualWorld.h"
#include <unistd.h>
#include <ctime>
#include <cmath>
#include <memory>

namespace ppsim {

/** \brief Constructor.
*/
VisualWorld::VisualWorld() :
		_graph{nullptr}
{
    _cell_outer_radius = 12;
    create_visual_world(0, 0, PlantConfig(), PreyConfig(), PredatorConfig());
}



/** \brief Constructor.
*/
VisualWorld::VisualWorld(
        TIndex size_x,
        TIndex size_y,
        PlantConfig plant_config,
        PreyConfig prey_config,
        PredatorConfig predator_config) {
    _graph = nullptr;
    _cell_outer_radius = 12;
    create_visual_world(
        size_x,
        size_y,
        plant_config,
        prey_config,
        predator_config);
}



/** \brief Create visual world.
    \param size_x number of fields on x-axis.
    \param size_y number of fields on y-axis.
    \param plant_config is a plant config.
    \param prey_config is a prey config.
    \param predator_config is a predator config.
 */
void
VisualWorld::create_visual_world(
    TIndex size_x,
    TIndex size_y,
    PlantConfig plant_config,
    PreyConfig prey_config,
    PredatorConfig predator_config)
{

    assert(size_x >= 0);
    assert(size_y >= 0);
    assert(_visual_world.size() == 0);

    _abstract_world = std::move(std::shared_ptr<AbstractWorld>{new AbstractWorld(size_x,
                                        size_y,
                                        plant_config,
                                        prey_config,
                                        predator_config)});


	for (int x = 0; x < size_x; x++) {
        _visual_world.push_back(std::vector<Cell>(size_y));
	}

    set_cell_outer_radius(_cell_outer_radius);
}



/** \brief Setter.
    \param cell_outer_radius is the radius of the hex cell.
*/
void
VisualWorld::set_cell_outer_radius(TSize cell_outer_radius) {
    TIndex size_x = _abstract_world->get_size_x();
    TIndex _size_y = _abstract_world->get_size_y();
    Cell cell;
    Cell::set_outer_radius(cell_outer_radius);
    _cell_outer_radius = cell_outer_radius;
    cell.recalc_cell_points(0, 0);
    _cell_inner_radius = cell.get_inner_radius();

    Cell::set_outer_radius(cell_outer_radius);
    for (int x = 0; x < size_x; x++) {
        for (int y = 0; y < _size_y; y++) {
            _visual_world[x][y].recalc_cell_points(x, y);
        }
	}
}



/** \brief Delete and create worlds (visual and abstract)
*/
void
VisualWorld::recreate_visual_world(
    TIndex size_x,
    TIndex size_y,
    PlantConfig plant_config,
    PreyConfig prey_config,
    PredatorConfig predator_config)
{
    delete_visual_world();
    create_visual_world(size_x,
                        size_y,
                        plant_config,
                        prey_config,
                        predator_config);
}


/** \brief Run simulation.
    \param cycles is the number of simulation cycles.
 */
void
VisualWorld::run(int cycles) {
    for (int i = 0; i < cycles; i++) {
        _abstract_world->run_cycle();

        if (_graph != 0) {
            size_t _preys = Countable<Prey>::total.count();
            size_t _predators = Countable<Predator>::total.count();
            _graph->append(
                _preys,
                Countable<Prey>::aged.count(),
                Countable<Prey>::eaten.count(),
                Countable<Prey>::starved.count(),
                Countable<Prey>::underfed.count(),
                _predators,
                Countable<Predator>::aged.count(),
                Countable<Predator>::eaten.count(),
                Countable<Predator>::starved.count(),
                Countable<Predator>::underfed.count());
        }
    }
}



/** \brief Draw the visible hex fields on the drawing area.
    \param cr is the cairo context, where hex grid shall be drawn.
 */
bool
VisualWorld::on_draw (const Cairo::RefPtr<Cairo::Context>& cr) {
    if (_is_enabled) {
        TIndex size_x = _abstract_world->get_size_x();
        TIndex _size_y = _abstract_world->get_size_y();
        //std::shared_ptr<Field> field;
        Field* field = nullptr;
        Cell* cell = nullptr;

        for (int x = _visible_area.a.x; x < _visible_area.b.x; x++) {
            for (int y = _visible_area.a.y; y < _visible_area.b.y; y++) {
                cell = &(_visual_world[x][y]);
                field = _abstract_world->get_field(x, y);
                assert(cell != nullptr);
                assert(field != nullptr);
                cell->draw_cell(cr, field);
            }
        }
        // uncomment following line to see every simulation step
        // force_redraw();
    }
    return true;
}



/** \brief Computes the area on the hex grid, that will be visible on the screen.
    \param visible_x is the width of the drawing area.
    \param visible_y is the height of the drawing area.
    \param scale_value_x is the current position of the x-scale.
    \param scale_value_y is the current position of thy y-scale.
    \param scale_upper_x is the maximum range of the x-scale.
    \param scale-upper_y is the maximum range of the y-scale.
*/
void
VisualWorld::compute_visual_area(
    int visible_x,
    int visible_y,
    double scale_value_x,
    double scale_value_y,
    double scale_upper_x,
    double scale_upper_y) {
    int total_x = get_allocation().get_width();
    int total_y = get_allocation().get_height();
    SPointRect point_rect;

    point_rect.a.x = total_x * (scale_value_x / scale_upper_x);
    point_rect.a.y = total_y * (scale_value_y / scale_upper_y);
    point_rect.b.x = point_rect.a.x + visible_x;
    point_rect.b.y = point_rect.a.y + visible_y;
    _visible_area = pointrect_to_posrect(point_rect);
    if (_visible_area.a.x > 0) {
        _visible_area.a.x--;
    }
    if (_visible_area.a.y > 0) {
        _visible_area.a.y--;
    }
    if (_visible_area.b.x < _abstract_world->get_size_x() - 3) {
        _visible_area.b.x++;
    }
    if (_visible_area.b.y < _abstract_world->get_size_y() - 3) {
        _visible_area.b.y++;
    }
    _visible_area.b.x++;
    _visible_area.b.y++;
}



/** \brief Convert area from drawing area to area on the hex grid.
    \param point_area Rectangle on the drawing area.
    \return Rectangle on hexgrid.
*/
SPosRect
VisualWorld::pointrect_to_posrect(SPointRect& point_area) {
    SPosRect pos_area;
    pos_area.a = point_to_pos(point_area.a);
    pos_area.b = point_to_pos(point_area.b);
    return pos_area;
}



/** \brief Convert a point from drawing area to position in hex grid.
    \param Point in the visual world.
    \return Position in hex grid.
*/
TPosition
VisualWorld::point_to_pos(TPoint point) {
    TPosition pos;
    TPosition res;
    TIndex size_x = _abstract_world->get_size_x();
    TIndex size_y = _abstract_world->get_size_y();
    pos.x = point.x / _cell_inner_radius;
    pos.y = point.y / _cell_outer_radius / 3;
    if (pos.x >= size_x) {
        pos.x = size_x - 1;
    }
    if (pos.y >= size_y) {
        pos.y = size_y - 1;
    }
    res = pos;
    double min_dist = _cell_outer_radius;

    // candidates
    for (TIndex x = pos.x - 1; x <= pos.x + 1; x++) {
        for (TIndex y = pos.y -1; y <= pos.y + 1; y++) {
            if (x >= 0 && x < size_x && y >= 0 && y < size_y) {
                if (distance(point, _visual_world[x][y].get_center()) < min_dist) {
                    res.x = x;
                    res.y = y;
                }
            }
        }
    }
    return res;
}



/** \brief Distance beetween two points.
*/
const double
VisualWorld::distance(const TPoint& a, const TPoint& b) {
    TPoint c;
    c = b - a;
    return sqrt(c.x * c.x + c.y * c.y);
}



/** \brief Redraw invalidated rectangle.
 */
void
VisualWorld::force_redraw() {
  Glib::RefPtr<Gdk::Window> win = get_window();
  if (win)
  {
    Gdk::Rectangle r(0, 0, get_allocation().get_width(), get_allocation().get_height());
    win->invalidate_rect(r, false);
  }
}



/** \brief Connect a graph to visual world.
    \param graph Pointer to a graph object.
*/
void
VisualWorld::register_graph(std::shared_ptr<Graph> graph) {
    assert(graph != nullptr);
    _graph = graph;
}



/** \brief Get height of visual world in dots.
    \return Height in dots.
 */
int
VisualWorld::get_height() {
    int height = 0;
    TIndex size_x = _abstract_world->get_size_x();
    TIndex size_y = _abstract_world->get_size_y();

    assert(size_x >= 0);
    assert(size_y >= 0);

    if (size_x != 0 && size_y != 0) {
        height =
            _visual_world[size_x - 1][size_y - 1].get_center().y +
            _visual_world[size_x - 1][size_y - 1].get_outer_radius();
    }
    return height;
}



/** \brief Get width of visiual world in dots.
    \return Width in dots.
 */
int
VisualWorld::get_width() {
    int width = 0;
    TIndex size_x = _abstract_world->get_size_x();
    TIndex size_y = _abstract_world->get_size_y();

	assert(size_x >= 0);
	assert(size_y >= 0);

    if (size_x != 0 && size_y != 0) {
        width =
            _visual_world[size_x - 1][size_y - 1].get_center().x +
            _visual_world[size_x - 1][size_y - 1].get_inner_radius();
    }
    return width;
}



/** \brief Hardware limits of the world.
    \return Maxium allowed height / width of the visual world.
*/
size_t
VisualWorld::get_max_size() {
    size_t max = 0;
    max--;
    return max;
}

} /* namespace ppsim */
