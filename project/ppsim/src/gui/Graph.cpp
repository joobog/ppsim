/**
    \file Graph.cpp
    \author Eugen Betke
    \brief Visualization of the graph.
*/



#include "Graph.h"
#include <Bounded.h>
#include <iostream>
#include <fstream>
#include <cairomm/surface.h>

namespace ppsim {


/** \brief Constructor.
*/
Graph::Graph()
{
    _num_values = 10;
    _values = new std::vector<unsigned int>[_num_values];
    _max_values = new unsigned int[_num_values];
    _max_values[PREY] = 0;
    _max_values[PREDATOR] = 0;
    _sim_size = 0;
    _cont_pos = true;
    _cont_zoom = true;
    _visible_range = 500;
    _visible_position = 0;

   // on_draw(this->get_window()->create_cairo_context());
}



/** \brief Destructor.
*/
Graph::~Graph()
{
    delete [] _values;
    _values = nullptr;

    delete [] _max_values;
    _max_values = nullptr;
}



/** \brief Add new entry to statistics.
    \param preys_total number of preys in the world
    \param preys_aged number of aged preys
    \param preys_killed number of killed preys
    \param preys_starved number of starved preys
    \param preds_underfed number of underfed preys
    \param preds_aged number of predators in the world
    \param preds_killed number of killed predators
    \param preds_starved number of starved predators
    \param preds_underfed number of underfed predators
*/
void
Graph::append(
    const size_t preys_total,
    const size_t preys_aged,
    const size_t preys_killed,
    const size_t preys_starved,
    const size_t preys_underfed,
    const size_t preds_total,
    const size_t preds_aged,
    const size_t preds_killed,
    const size_t preds_starved,
    const size_t preds_underfed)
{
    if (_values->size() < _values->max_size()) {
        _values[PREDATOR].push_back(preds_total);
        _values[PREY].push_back(preys_total);
        _values[PREYAGED].push_back(preys_aged);
        _values[PREYKILLED].push_back(preys_killed);
        _values[PREYSTARVED].push_back(preys_starved);
        _values[PREYUNDERFED].push_back(preys_underfed);
        _values[PREDAGED].push_back(preds_aged);
        _values[PREDKILLED].push_back(preds_killed);
        _values[PREDSTARVED].push_back(preds_starved);
        _values[PREDUNDERFED].push_back(preds_underfed);

        if(preds_total > _max_values[PREDATOR]) {
            _max_values[PREDATOR] = preds_total;
        }

        if(preys_total > _max_values[PREY]) {
            _max_values[PREY] = preys_total;
        }
    }
    else{
		// ToDo: nasty code: better throw exception
        std::cerr << "Overflow in CGraph::append()" << std::endl;
        exit(1);
    }
}



/** \brief Clear statistics.
*/
void
Graph::clear() {
    for (int i = 0; i < _num_values; i++) {
        _values[i].clear();
 //       _values[i].shrink_to_fit();
    }
}



/** \brief Signal handler.
    \param cr is a pointer to the cairo context
    \return always true

    Draws population development (of preys and predators) in the cairo
    context object.
 */
bool
Graph::on_draw (const Cairo::RefPtr<Cairo::Context> &cr) {
    int w = get_width();
    int h = get_height();

    if (_is_enabled) {
        cr->save();

        cr->rectangle(0, 0, w, h);
        cr->set_source_rgb(1, 1, 1);
        cr->fill();

        Bounded<TValues::size_type> startb(0, 0, _values[PREY].size());
        Bounded<TValues::size_type> stopb(0, 0, _values[PREY].size());
        TValues::size_type start = 0;
        TValues::size_type stop = 0;

        if (_cont_zoom) {
            stop = _values[PREY].size();
            start = 0;
        }
        else {
            if (_cont_pos) {
                stopb = _values[PREY].size();
                start = (stopb - _visible_range).get_value();
                stop = start + _visible_range;
            }
            else {
                start = _visible_position;
                stop = start + _visible_range;
            }
        }

        draw_line(cr, _values[PREY], _max_values[PREY], start, stop);
        cr->set_source_rgb(0, 0, 0);
        cr->stroke();

        draw_line(cr, _values[PREDATOR], _max_values[PREDATOR],  start, stop);
        cr->set_source_rgb(1, 0, 0);
        cr->stroke();

        cr->restore();
    }

    return true;
}



/** \brief Redraw population development.
 */
void
Graph::force_redraw() {
  Glib::RefPtr<Gdk::Window> win = get_window();
  if (win)
  {
    Gdk::Rectangle r(0, 0, get_allocation().get_width(), get_allocation().get_height());
    win->invalidate_rect(r, false);
  }
}



/** \brief Draw line.
    \param cr is a cairo context
    \param values that shall be drawn
    \param max max value on the y-axis
    \param start is the first value of an interval
    \param end is the last value of an interval

    Draws a line based on the values in the interval [start, end]. The line is
    scaled automatically on the y-axis and x-axis.

    The resolution of the line is also scaled automatically. The number of
    values taken into account never exceeds the number of points on x-axis of
    the cairo context. Therefore the line is drawn in constant time.
*/
void
Graph::draw_line(
    const Cairo::RefPtr<Cairo::Context> &cr,
    TValues &values,
    TValue max,
    size_t start,
    size_t end)
    {

	assert(start <= end);
	assert(start >= 0);

    int w = get_width();
    int h = get_height();
    int step;
    float scale_factor_w;
    float scale_factor_h;
    unsigned long counter = 0;

   // size_t interval_size = end - start;
    step = (end - start) / w + 1;
	assert(step > 0);
    scale_factor_w = (float) w / (float) (end - start - 1); //interval_size;
    scale_factor_h = (float) h / (float) find_max(values, start, end); //(float) max;

    if (values.size()) {
        cr->move_to(0, h - values[start] * scale_factor_h);
    }

    for (size_t i = step * (start / step) + step; i < end; i += step) {
        counter++;
        if(i < values.size()) {
            cr->line_to(counter * scale_factor_w * step, h - values[i] * scale_factor_h);
        }
    }

    if (values.size()) {
        cr->move_to(end * scale_factor_w * step, h - values[start] * scale_factor_h);
    }
}



/** \brief Find max value in a collection of data.
    \param values are a collection of data
    \param start is the first value of an interval
    \param end is the last value of an interval
    \return maximum value

    Finds max value in a collection of data in an interval [start, end]
*/
TValue
Graph::find_max(TValues &values, TValue start, TValue e) {
    #if DEBUG
        assert(start <= e);
    #endif

    TValue end = e;
    if (end > values.size()) {
        end = values.size();
    }

    #if DEBUG
        assert(end <= values.size());
    #endif
    TValue max = 0;
    for (TValue i = start; i < end; i++) {
        if (i >= 0) {
            if (max < values[i]) {
                max = values[i];
            }
        }
    }
    return max;
}



/** \brief Getter.
    \return number of entries that can be stored
*/
TValues::size_type
Graph::get_max_size() {
    return _values->max_size();
}



/** \brief Getter.
    \return number of stored entries
*/
TValues::size_type
Graph::get_curr_size() {
    return _values->size();
}



/** \brief Setter.
    \param range is a number of visible entries

    Sets the size of the visible interval.
*/
void
Graph::set_visible_range(TValues::size_type range) {
    _visible_range = range;
}



/** \brief Setter.
    \param position is the index of the first visible entry

    Sets the start of the visible interval.
*/
void
Graph::set_visible_position(TValues::size_type position) {
    _visible_position = position;
}



/** \brief Setter.
    \param cont_pos activates this feature if true

    Draw tail of the graph. The size of the tail is determined by the range.
    Update the graph continously.
*/
void
Graph::set_cont_pos(bool cont_pos) {
    _cont_pos = cont_pos;
}



/** \brief Setter.
    \param cont_zoom activates this feature if true

    Draw the complete development of the population. Update the graph
    continously.
*/
void
Graph::set_cont_zoom(bool cont_zoom) {
    _cont_zoom = cont_zoom;
}



/** \brief Export statistics to a CSV-file.
    \param filename is the name of the file
*/
void
Graph::export_to_file(const char* filename) {
    const char* sep = ";";
    std::ofstream file;
    file.open(filename);
    file <<
        "preys total" << sep <<
        "preys aged" << sep <<
        "preys killed" << sep <<
        "preys starved" << sep <<
        "preys underfed" << sep <<
        "preds total" << sep <<
        "preds aged" << sep <<
        "preds killed" << sep <<
        "preds straved" << sep <<
        "preds underfed" << std::endl;

    for (int i = 0; i < _values[0].size(); i++) {
        file <<
            _values[PREY][i] << sep <<
            _values[PREYAGED][i] << sep <<
            _values[PREYKILLED][i] << sep <<
            _values[PREYSTARVED][i] << sep <<
            _values[PREYUNDERFED][i] << sep <<
            _values[PREDATOR][i] << sep <<
            _values[PREDAGED][i] << sep <<
            _values[PREDKILLED][i] << sep <<
            _values[PREDSTARVED][i] << sep <<
            _values[PREDUNDERFED][i] << std::endl;
    }
    file.close();
}



/** \brief Getter.
    \return the size of the visible range
*/
TValues::size_type
Graph::get_visible_range() {
    return _visible_range;
}



/** \brief Getter.
    \return the index of the first entry of the visible range
*/
TValues::size_type
Graph::get_visible_position() {
    return _visible_position;\
}



/** \brief Enable visualization of graph.
*/
void
Graph::enable() {
    _is_enabled = true;
}



/** \brief Disable visualization of graph.
*/
void
Graph::disable() {
    _is_enabled = false;
}



/** \brief Getter.
    \param true if visualization is enabled, else false
*/
bool
Graph::is_enabled() {
    return _is_enabled;
}

} /* namespace ppsim */
