/**
    \file Cell.cpp
    \author Eugen Betke
    \brief Definition of directions.
*/



#include "Cell.h"
#include "Helpers.h"

namespace ppsim {

TSize Cell::_out_r = 0;
TSize Cell::_inn_r = 0;

/**
 * constructor
*/
Cell::Cell() :
    center(0, 0),
	corners(6)
{
    compute_corners();
}


/** \brief Recalculate coordinates on the cell, when radius changes.
    \param x is the position of the hex-field on the x-axis
    \param y is the position of the hex-field on the y-axis
    \param out_r is the outer radius of the cell

    Uses position and outer radius to calculate corners.
*/
void Cell::recalc_cell_points(int x, int y) {
    TPoint shift;
    int x_is_odd;

    x_is_odd = x % 2;
    if (x_is_odd) {
        shift.set_point(Cell::_inn_r * x, Cell::_out_r * 3 * y + Cell::_out_r * 1.5);
    }
    else {
        shift.set_point(Cell::_inn_r * x, Cell::_out_r * 3 * y);
    }

    this->center = TPoint(Cell::_inn_r, Cell::_out_r) + shift;
    compute_corners();
}



/** \brief Recalculate coordinates on the cell, when radius changes.
    \param center is the point on the map
    \param out_r is the outer radius of the cell

    Uses center point and outer radius to calculate corners.
 */
void
Cell::recalc_cell_points(TPoint center) {
    this->center = center;
    compute_corners();
}




/** \brief Computer the corners of the cell.
 */
void
Cell::compute_corners () {
    TSize a = Cell::_out_r / 2.0f; 	//sin(M_PI * 30.0f / 180.0f) * outer_radius;
    TSize b = Cell::_inn_r; 		//cos(M_PI * 30.0f / 180.0f) * outer_radius;
    TPoint coord(b, a);

    corners[0] = TPoint(0, -Cell::_out_r);
    corners[1] = coord.mirror_h();
    corners[2] = coord;
    corners[3] = TPoint(0, Cell::_out_r);
    corners[4] = coord.mirror_v();
    corners[5] = coord.mirror_h_v();

    for(int i = 0; i < 6; i++) {
        corners[i] = corners[i] + center;
    }
}



/** \brief Draw this cell in the world map.

    Draws:
    -# hexagon area (green field)
    -# number of predators in red
    -# number of preys in black

    \param cr is a pointer to the cairo context, where the world is drawn
    \param field provides information how the cell to be drawn
 */
void
//Cell::draw_cell(const Cairo::RefPtr<Cairo::Context> &cr, std::shared_ptr<Field> field) {
Cell::draw_cell(const Cairo::RefPtr<Cairo::Context> &cr, Field* field) {
    Cairo::TextExtents extents;
    int x, y;
    std::string s;
    double green;
    int number_predators, number_preys;


    assert(&(field) != nullptr);


	cr->save();

    // fill cell
    green = field->get_plant()->get_energy_ratio();

    assert(green >= 0);
    assert(green <= 1);


    cr->move_to(corners[5].x, corners[5].y);
    for (int i = 0; i < 6; i++) {
        cr->line_to(corners[i].x, corners[i].y);
    }


    cr->set_source_rgb(1 - green, 1, 1 - green);
    cr->fill_preserve();
    cr->set_line_width(1);
    cr->stroke();



    //* draw text
    cr->set_font_size(Cell::_out_r / 2);
    cr->select_font_face ("Sans",
                          Cairo::FONT_SLANT_NORMAL,
                          Cairo::FONT_WEIGHT_BOLD);

    number_predators = field->count_predators();
    if (number_predators) {
        s = Helpers::to_str(number_predators);
        cr->get_text_extents(s, extents);
        x = center.x - (extents.width / 2 + extents.x_bearing);
        y = center.y - (extents.height / 2 + extents.y_bearing)
            - Cell::_out_r / 2;
        cr->move_to(x, y);
        cr->set_source_rgb(1, 0, 0);
        cr->show_text(s.c_str());
    }

    number_preys = field->count_preys();
    if (number_preys) {
        s = Helpers::to_str(number_preys);
        cr->get_text_extents(s, extents);
        x = center.x - (extents.width / 2 + extents.x_bearing);
        y = center.y - (extents.height / 2 + extents.y_bearing)
            + Cell::_out_r / 2;
        cr->move_to(x, y);
        cr->set_source_rgb(0, 0, 0);
        cr->show_text(s.c_str());
    }
    //*/

	cr->restore();
}



/** \brief Clone cell
    \param direction indicates where the cell should be placed
    \return a new cell
 */
Cell
Cell::new_cell(EDirection direction) {
    TPoint shift;

    switch (direction) {
    case RIGHT:
        shift.set_point(Cell::_inn_r * 2.0f, 0);
        break;
    case BELOW_RIGHT:
        shift.set_point(Cell::_inn_r, 1.5f * Cell::_out_r);
        break;
    case BELOW_LEFT:
        shift.set_point(-Cell::_inn_r,1.5f * Cell::_out_r);
        break;
    case ABOVE_RIGHT:
    case ABOVE_LEFT:
    case LEFT:
    defaut:
        shift.set_point(0, 0);
    }

    TPoint new_center = center + shift;
    Cell clone;
    clone.recalc_cell_points(new_center);
    return clone;
}



void
Cell::set_outer_radius(const TSize out_r) {
    Cell::_out_r = out_r;
    Cell::_inn_r = _out_r * (sqrt(3.0f) / 2.0f);
}

} /* ppsim */
