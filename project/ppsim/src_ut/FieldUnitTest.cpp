#include "FieldUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( FieldUnitTest );

FieldUnitTest::FieldUnitTest()
{
    //ctor
}

FieldUnitTest::~FieldUnitTest()
{
    //dtor
}

void
FieldUnitTest::setUp() {
}

void
FieldUnitTest::tearDown() {
    CPPUNIT_ASSERT_EQUAL((size_t) 0, Countable<Prey>::count_total());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, Countable<Predator>::count_total());
}

void
FieldUnitTest::test_init() {
    Field field;
    unsigned int max_val = -1;
    PlantConfig plant_config;
    plant_config.set_max_energy(1111);
    plant_config.set_energy(111);
    plant_config.set_growth_rate(1.44);

    SPPlant plant(new Plant());
    field.replace_plant(plant);
    CPPUNIT_ASSERT(!field.has_prey());
    CPPUNIT_ASSERT(!field.has_predator());
    CPPUNIT_ASSERT(field.has_plant());

    assert(field.get_plant() != nullptr);

    SPPlant test_plant = field.get_plant();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1111, field.get_plant()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 111, field.get_plant()->get_energy());
    CPPUNIT_ASSERT_EQUAL((double) 1.44, field.get_plant()->get_growth_rate());
}

void
FieldUnitTest::test_get_set_organisms() {
    Field field;

    SPPlant plant(new Plant());

    plant->set_max_energy(1000);
    plant->set_energy(0);
    plant->set_growth_rate(0.2);

    field.replace_plant(plant);

    CPPUNIT_ASSERT(!field.has_plant());
    CPPUNIT_ASSERT(!field.has_prey());
    CPPUNIT_ASSERT(!field.has_predator());

    plant->set_energy(10);
    field.replace_plant(plant);
    SPPrey prey(new Prey());
    field.push(prey);
    SPPredator predator(new Predator());
    field.push(predator);

    CPPUNIT_ASSERT(field.has_plant());
    CPPUNIT_ASSERT(field.has_prey());
    CPPUNIT_ASSERT(field.has_predator());
}

void
FieldUnitTest::test_count_organisms() {
    Field field;

    CPPUNIT_ASSERT_EQUAL((size_t) 0, field.count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t)0, field.count_predators());

    field.push(new Predator(PredatorConfig()));
    field.push(new Predator(PredatorConfig()));
    CPPUNIT_ASSERT_EQUAL((size_t) 2, field.count_predators());

    field.push(new Prey());
    field.push(new Prey());
    field.push(new Prey());
    CPPUNIT_ASSERT_EQUAL((size_t) 3, field.count_preys());
}

void
FieldUnitTest::test_choose_direction_preds() {
    vector<Field*> n6;
    Field field;
    Predator* predator = nullptr;

    for (int i = 0; i < 6; i++) {
        n6.push_back(new Field());
    }

    predator = new Predator();
    predator->set_max_energy(1000);
    predator->set_energy(1000);
    predator->set_max_satiation(1000);
    predator->set_satiation(900);

    n6[3]->push(new Prey());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, n6[0]->count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, n6[1]->count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, n6[2]->count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 1, n6[3]->count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, n6[4]->count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, n6[5]->count_preys());

    field.push(predator);
    field.choose_direction(n6);
    CPPUNIT_ASSERT_EQUAL(&field, predator->get_next_field());

    predator->set_energy(300);
    predator->set_satiation(300);
    CPPUNIT_ASSERT(predator->is_hungry());
    field.choose_direction(n6);
    CPPUNIT_ASSERT_EQUAL(n6[3], predator->get_next_field());


    for (int i = 0; i < 6; i++) {
        delete n6.back();
        n6.back() = nullptr;
        n6.pop_back();
    }
}

void
FieldUnitTest::test_choose_direction_preys() {
    vector<Field*> n6;
    Field field;
    Prey* prey = nullptr;
    PreyConfig* prey_config = nullptr;
    Plant empty_plant;
    Plant* half_plant = nullptr;
    Plant* full_plant = nullptr;

    empty_plant.set_max_energy(1000);
    empty_plant.set_energy(0);

    half_plant = new Plant();
    half_plant->set_max_energy(1000);
    half_plant->set_energy(500);

    full_plant = new Plant();
    full_plant->set_max_energy(1000);
    full_plant->set_energy(1000);

    for (int i = 0; i < 6; i++) {
        n6.push_back(new Field());
    }
    for (int i = 0; i < 6; i++) {
        n6[i]->replace_plant(new Plant(empty_plant));
    }
    n6[3]->replace_plant(full_plant);
        field.replace_plant(half_plant);

    prey = new Prey();
    prey->set_max_energy(1000);
    prey->set_energy(1000);
    prey->set_max_satiation(1000);
    prey->set_satiation(900);


    field.push(prey);
    field.choose_direction(n6);
    CPPUNIT_ASSERT_EQUAL(n6[3], prey->get_next_field());


    for (int i = 0; i < 6; i++) {
        delete n6.back();
        n6.back() = nullptr;
        n6.pop_back();
    }
}

void
FieldUnitTest::test_move() {
    Field field1;
    Field field2;

    Prey* prey1 = new Prey();
    Prey* prey2 = new Prey();
    Prey* prey3 = new Prey();
    Predator* predator1 = new Predator();
    Predator* predator2 = new Predator();
    Predator* predator3 = new Predator();

    field1.push(prey1);
    field1.push(prey2);
    field2.push(prey3);
    field2.push(predator1);
    field2.push(predator2);
    field1.push(predator3);

    CPPUNIT_ASSERT_EQUAL((size_t) 2, field1.count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 1, field1.count_predators());

    CPPUNIT_ASSERT_EQUAL((size_t) 1, field2.count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 2, field2.count_predators());

    prey1->set_next_field(&field2);
    prey2->set_next_field(&field2);
    predator1->set_next_field(&field1);
    predator2->set_next_field(&field1);

    field1.move();
    field2.move();

    field1.finish_move();
    field2.finish_move();

    CPPUNIT_ASSERT_EQUAL((size_t) 0, field1.count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 3, field1.count_predators());

    CPPUNIT_ASSERT_EQUAL((size_t) 3, field2.count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 0, field2.count_predators());
}

void
FieldUnitTest::test_preys_eat_plants() {
    Field field;
    Plant* plant = nullptr;
    Prey* prey1 = nullptr;
    Prey* prey2 = nullptr;

    plant = field.get_plant();

    CPPUNIT_ASSERT(plant != nullptr);

    plant->set_max_energy(1000);
    plant->set_energy(800);

    prey1 = new Prey();
    prey1->set_max_energy(1000);
    prey1->set_energy(500);
    prey1->set_energy_consumption(110);
    prey1->set_max_satiation(1000);
    prey1->set_satiation(900);
    prey1->set_satiation_consumption(100);

    prey2 = new Prey();
    prey2->set_max_energy(1000);
    prey2->set_energy(500);
    prey2->set_energy_consumption(110);
    prey2->set_max_satiation(1000);
    prey2->set_satiation(900);
    prey2->set_satiation_consumption(100);

    field.push(prey1);
    field.push(prey2);

    field.preys_eat_plants();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 600, field.get_plant()->get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, prey1->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, prey2->get_satiation());
}


void
FieldUnitTest::test_preds_eat_preys() {
    Field field;
    Prey* prey1 = nullptr;
    PreyConfig* prey1_config = nullptr;
    Prey* prey2 = nullptr;
    PreyConfig* prey2_config = nullptr;
    Predator* predator1 = nullptr;
    PredatorConfig* predator1_config = nullptr;
    Predator* predator2 = nullptr;
    PredatorConfig* predator2_config = nullptr;

    prey1 = new Prey();
    prey1->set_max_energy(1000);
    prey1->set_energy(500);
    prey2 = new Prey();
    prey2->set_max_energy(1000);
    prey2->set_energy(500);
    predator1 = new Predator();
    predator1->set_max_satiation(900);
    predator1->set_satiation(400);
    predator2 = new Predator();
    predator2->set_max_satiation(900);
    predator2->set_satiation(100);

    field.push(prey1);
    field.push(prey2);
    field.push(predator1);
    field.push(predator2);

    CPPUNIT_ASSERT_EQUAL((size_t) 2, field.count_preys());
    CPPUNIT_ASSERT_EQUAL((size_t) 2, field.count_predators());

    field.predators_eat_preys();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 900, predator1->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 600, predator2->get_satiation());

    CPPUNIT_ASSERT_EQUAL((size_t) 0, field.count_preys());
}

void
FieldUnitTest::test_update_plant() {
    Field field;
    Plant* plant0 = nullptr;
    Plant* plant1 = nullptr;
    Plant* plant2 = nullptr;


    plant0 = field.get_plant();
    assert(plant0 != nullptr);
    plant0->set_max_energy(1111);
    plant0->set_energy(33);

    plant1 = new Plant();
    plant1->set_max_energy(2222);
    plant1->set_energy(111);

    field.scale_config(*plant1);

    plant2 = field.get_plant();

    CPPUNIT_ASSERT(plant1 != plant2);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2222, plant2->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 66, plant2->get_energy());

    delete plant1;
}


void
FieldUnitTest::test_update_preys() {
    Field field;
    Prey* prey1 = nullptr;
    Prey* prey2 = nullptr;
    Prey* prey4 = nullptr;
    Prey* prey5 = nullptr;
    stack<Prey*>* preys;

    prey1 = new Prey();
    prey1->set_max_energy(3000);
    prey1->set_energy(1000);
    prey1->set_max_satiation(4000);
    prey1->set_satiation(100);
    prey2 = new Prey();
    prey2->set_max_energy(2000);
    prey2->set_energy(1000);
    prey2->set_max_satiation(8000);
    prey2->set_satiation(1000);

    PreyConfig* prey3_config = new PreyConfig();
    prey3_config->set_max_energy(4000);
    prey3_config->set_energy(3322);
    prey3_config->set_max_satiation(2000);
    prey3_config->set_satiation(223);

    field.push(prey1);
    field.push(prey2);
    field.scale_config(*prey3_config);
    preys = field.get_preys();

    CPPUNIT_ASSERT_EQUAL((size_t) 2, preys->size());

    prey4 = preys->top();
    preys->pop();
    prey5 = preys->top();
    preys->pop();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, prey4->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1333, prey4->get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, prey4->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 50, prey4->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, prey5->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, prey5->get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, prey5->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 250, prey5->get_satiation());

    delete prey4;
    prey4 = nullptr;
    delete prey5;
    prey5 = nullptr;
    delete prey3_config;
    prey3_config = nullptr;
}


void
FieldUnitTest::test_update_predators() {
    Field field;
    Predator* pred1 = nullptr;
    PredatorConfig* pred1_config = nullptr;
    Predator* pred2 = nullptr;
    PredatorConfig* pred2_config = nullptr;
    PredatorConfig* pred3_config = nullptr;
    Predator* pred4 = nullptr;
    PredatorConfig* pred4_config = nullptr;
    Predator* pred5 = nullptr;
    PredatorConfig* pred5_config = nullptr;
    stack<Predator*>* preds;

    pred1 = new Predator();
    pred1->set_max_energy(3000);
    pred1->set_energy(1000);
    pred1->set_max_satiation(4000);
    pred1->set_satiation(100);
    pred2 = new Predator();
    pred2->set_max_energy(2000);
    pred2->set_energy(1000);
    pred2->set_max_satiation(8000);
    pred2->set_satiation(1000);

    pred3_config = new PredatorConfig();
    pred3_config->set_max_energy(4000);
    pred3_config->set_energy(3322);
    pred3_config->set_max_satiation(2000);
    pred3_config->set_satiation(223);

    field.push(pred1);
    field.push(pred2);
    field.scale_config(*pred3_config);
    preds = field.get_predators();

    CPPUNIT_ASSERT_EQUAL((size_t) 2, preds->size());

    pred4 = preds->top();
    preds->pop();
    pred5 = preds->top();
    preds->pop();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, pred4->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1333, pred4->get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, pred4->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 50, pred4->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, pred5->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, pred5->get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, pred5->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 250, pred5->get_satiation());

    delete pred4;
    pred4 = nullptr;
    delete pred5;
    pred5 = nullptr;
    delete pred3_config;
    pred3_config = nullptr;
}

void
FieldUnitTest::test_preys_death() {
    Field field;
    Plant* plant = nullptr;
    Prey* prey;

    plant = field.get_plant();
    plant->set_max_energy(1);
    plant->set_energy(0);
    plant->set_growth_rate(0);

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1, field.get_plant()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 0, field.get_plant()->get_energy());
    CPPUNIT_ASSERT_EQUAL((double) 0, field.get_plant()->get_growth_rate());

    prey = new Prey();
    prey->set_max_age(10000);
    prey->set_max_energy(1000);
    prey->set_energy(1000);
    prey->set_energy_consumption(1000);
    prey->set_max_satiation(1000);
    prey->set_satiation(1000);
    prey->set_satiation_consumption(250);
    prey->set_birth_rate(0.01);

    field.push(prey);
    CPPUNIT_ASSERT_EQUAL((size_t) 1, field.count_preys());

    field.increase_age();
    field.preys_eat_plants();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, field.get_preys()->top()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 750, field.get_preys()->top()->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 250, field.get_preys()->top()->get_satiation_consumption());

    field.increase_age();
    field.preys_eat_plants();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, field.get_preys()->top()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 500, field.get_preys()->top()->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 250, field.get_preys()->top()->get_satiation_consumption());

    field.increase_age();
    field.preys_eat_plants();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, field.get_preys()->top()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 250, field.get_preys()->top()->get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 250, field.get_preys()->top()->get_satiation_consumption());

    field.increase_age();
    field.preys_eat_plants();

    CPPUNIT_ASSERT_EQUAL((size_t) 0, field.count_preys());

}
























