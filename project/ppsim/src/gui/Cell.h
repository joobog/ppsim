/**
    \file Cell.h
    \author Eugen Betke
    \brief Definition of directions.
*/



#ifndef CELL_H
#define CELL_H

#include "C2DVector.h"
#include "Field.h"
#include "Countable.h"
#include <cmath>
#include <iostream>
#include <sstream>
#include <vector>
#include <gtkmm/drawingarea.h>


namespace ppsim {

/** \brief Definition of directions.
*/
enum EDirection
{
    RIGHT           = 0,
    ABOVE_RIGHT     = 60,
    ABOVE_LEFT      = 120,
    LEFT            = 180,
    BELOW_LEFT      = 240,
    BELOW_RIGHT     = 300
};



/** \brief Visualization of the field.
*/
class Cell
{
    public:
        Cell();
        void recalc_cell_points(int x, int y);
        void recalc_cell_points(TPoint center);
        // void draw_cell(const Cairo::RefPtr<Cairo::Context> &cr, std::shared_ptr<Field> field);
        void draw_cell(const Cairo::RefPtr<Cairo::Context> &cr, Field* field);
        Cell new_cell(EDirection direction);
        TPoint get_center() {return center;}
        const TSize get_outer_radius() const {return Cell::_out_r;}
        const TSize get_inner_radius() const {return Cell::_inn_r;}
        static void set_outer_radius(const TSize out_r);
        static TSize _out_r;
        static TSize _inn_r;

    private:
        TPoint center;
        std::vector<TPoint> corners;
        void compute_corners();
};

} /* namespace ppsim */

#endif // CELL_H
