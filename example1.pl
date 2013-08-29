% simple testing examples with tree houses

% Solution
% House: Nationality Cigarette Color Drink Pet
% 1: englishman kools red tea fox
% 2: ukrainian chesterfields green water zebra
% 3: spaniard parliaments blue milk dog

nationalities([englishman,spaniard,ukrainian]).
colors([red,green,blue]).
cigarettes([chesterfields,parliaments,kools]).
drinks([water,tea,milk]).
pets([dog,zebra,fox]).

rules([
    position(englishman,1),
    right_to(englishman,green),
    right_to(green,parliaments),
    left_to(milk,zebra),
    related(ukrainian,water),
    related(tea,fox),
    left_to(ukrainian,kools),
    related(spaniard,milk)
    ]).