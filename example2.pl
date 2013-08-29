% Example taken from wikipedia http://en.wikipedia.org/wiki/Zebra_Puzzle

% There are five houses.
% The Englishman lives in the red house.
% The Spaniard owns the dog.
% Coffee is drunk in the green house.
% The Ukrainian drinks tea.
% The green house is immediately to the right of the ivory house.
% The Old Gold smoker owns snails.
% Kools are smoked in the yellow house.
% Milk is drunk in the middle house.
% The Norwegian lives in the first house.
% The man who smokes Chesterfields lives in the house next to the man with the fox.
% Kools are smoked in the house next to the house where the horse is kept.
% The Lucky Strike smoker drinks orange juice.
% The Japanese smokes Parliaments.
% The Norwegian lives next to the blue house.

% Solution should be:
% House: Nationality Cigarette Color Drink Pet
%     1: norwegian kools yellow water fox
%     2: ukrainian chesterfields blue tea horse
%     3: englishman oldGold red milk snails
%     4: spaniard luckyStrike ivory orangeJuice dog
%     5: japanese parliaments green coffee zebra

nationalities([englishman,spaniard,ukrainian,norwegian,japanese]).
colors([red,green,blue,yellow,ivory]).
cigarettes([chesterfields,parliaments,kools,oldGold,luckyStrike]).
drinks([water,tea,milk,orangeJuice,coffee]).
pets([dog,zebra,fox,horse,snails]).

rules([
    related(englishman,red),
    related(spaniard,dog),
    related(coffee,green),
    related(ukrainian,tea),
    left_to(green,ivory),
    related(oldGold,snails),
    related(kools,yellow),
    position(milk,3),
    position(norwegian,1),
    next_to(chesterfields,fox),
    next_to(kools,horse),
    related(luckyStrike,orangeJuice),
    related(japanese,parliaments),
    next_to(norwegian,blue)]).