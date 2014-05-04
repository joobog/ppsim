#ifndef LIVINGSTATE_H
#define LIVINGSTATE_H

#include <ostream>

namespace ppsim {

class LivingState;
std::ostream& operator<< (std::ostream &out, LivingState ls);

/** \brief Possible living states of creatures.
*/
enum LIVING_STATE {
    ALIVE,
    AGED,
    STARVED,
    UNDERFED,
    KILLED};


/** \brief Living states of a creature.
*/
class LivingState
{
    public:
        static LivingState alive() {return LivingState(ALIVE);};
        static LivingState killed() {return LivingState(KILLED);};
        static LivingState starved() {return LivingState(STARVED);};
        static LivingState underfed() {return LivingState(UNDERFED);};
        static LivingState aged() {return LivingState(AGED);};

        const LivingState get_state() const {return LivingState(_state);};
        const bool operator==(const LivingState& ls) const {return ls._state == _state;};
        const bool operator!=(const LivingState& ls) const {return ls._state != _state;};

    private:
        LivingState(LIVING_STATE state) : _state(state) {};
        LIVING_STATE _state;
};

} /* namespace ppsim */

#endif // LIVINGSTATE_H
