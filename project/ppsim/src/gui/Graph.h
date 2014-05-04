/**
    \file Graph.h
    \author Eugen Betke
    \brief Visualization of the graph.
*/



#ifndef GRAPH_H
#define GRAPH_H

#include <gtkmm/drawingarea.h>
#include <vector>

namespace ppsim {

/** \brief Statistics indices
*/
enum EOrganism {
    PREDATOR,
    PREY,
    PREYAGED,
    PREYKILLED,
    PREYSTARVED,
    PREYUNDERFED,
    PREDAGED,
    PREDKILLED,
    PREDSTARVED,
    PREDUNDERFED
};



typedef unsigned int TValue;
typedef std::vector<TValue> TValues;



/** \brief Visualization of the graph.

    The graph shows population development of preys and predators.
    -# It scales automatically the y-axis for both populations independently.
    -# It is able to move the line to last values. This feature can be switched
    on and off.
    -# It is able to zoom automatically to the whole range of values. This
    feature can be switch on and off.
*/
class Graph : public Gtk::DrawingArea
{
    public:
        Graph();
        virtual ~Graph();
        void append (
            const size_t preys_total,
            const size_t preys_aged,
            const size_t preys_killed,
            const size_t preys_starved,
            const size_t preys_underfed,
            const size_t preds_total,
            const size_t preds_aged,
            const size_t preds_killed,
            const size_t preds_starved,
            const size_t preds_underfed);
        //void draw();
        void draw_line(
            const Cairo::RefPtr<Cairo::Context> &cr,
            TValues &values,
            TValue max,
            size_t start,
            size_t end);
        void force_redraw();
        void set_interval_size(unsigned long size);
        TValues::size_type get_max_size();
        TValues::size_type get_curr_size();
        void set_visible_range(TValues::size_type range);
        void set_visible_position(TValues::size_type range);
        void set_cont_pos(bool cont_pos);
        void set_cont_zoom(bool cont_zoom);
        void export_to_file(const char* filename);
        void clear();
        TValue find_max(TValues &values, TValue start, TValue end);

        TValues::size_type get_visible_range();
        TValues::size_type get_visible_position();

        void enable();
        void disable();
        bool is_enabled();

    protected:
        Cairo::RefPtr<Cairo::Context> cairo_context;
        virtual bool on_draw(const Cairo::RefPtr<Cairo::Context> &cr);

    private:
        bool _is_enabled;
        bool _cont_pos;
        bool _cont_zoom;
        int _num_values;
        TValues* _values;
        TValue* _max_values;
        TValues::size_type _sim_size;
        TValues::size_type _visible_range;
        TValues::size_type _visible_position;
};

} /* namespace ppsim */

#endif // GRAPH_H
