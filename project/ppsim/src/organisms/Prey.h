/**
    \file Prey.h
    \author Eugen Betke
    \brief Behaviour of preys.
*/



#ifndef PREY_H_
#define PREY_H_

#include "Creature.h"
#include "Countable.h"
#include "PreyConfig.h"


namespace ppsim {
	class Prey;
	typedef std::shared_ptr<Prey> SPPrey;

	/** \brief Behaviour of preys.
	*/
	class Prey :
		virtual public PreyConfig,
		public Creature,
		public Countable<Prey>
	{
	public:
		virtual void eat(Organism* org);
		virtual SPPrey get_offsprings();
	};
} /* namespace ppsim */


#endif /* CPREY_H_ */
