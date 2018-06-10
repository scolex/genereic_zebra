:-use_module(library(clpfd)).
:-use_module(library(lists)).

%==========================================================================
%  apply_rule(+Rule,....) Match related rule term and apply it to houses
%==========================================================================

% Match related terms

apply_rule(related(X,Y),AH,A,BH,B,_,_,_,_,_,_):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),AH,A,_,_,BH,B,_,_,_,_):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),AH,A,_,_,_,_,BH,B,_,_):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),AH,A,_,_,_,_,_,_,BH,B):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),_,_,AH,A,BH,B,_,_,_,_):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),_,_,AH,A,_,_,BH,B,_,_):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),_,_,AH,A,_,_,_,_,BH,B):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),_,_,_,_,AH,A,BH,B,_,_):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),_,_,_,_,AH,A,_,_,BH,B):-
    related(X,Y,AH,A,BH,B).

apply_rule(related(X,Y),_,_,_,_,_,_,AH,A,BH,B):-
    related(X,Y,AH,A,BH,B).

% Match next_to term

apply_rule(next_to(X,Y),AH,A,_,_,_,_,_,_,_,_):-
    next_to(X,Y,AH,A,AH,A).

apply_rule(next_to(X,Y),_,_,AH,A,_,_,_,_,_,_):-
    next_to(X,Y,AH,A,AH,A).

apply_rule(next_to(X,Y),_,_,_,_,AH,A,_,_,_,_):-
    next_to(X,Y,AH,A,AH,A).

apply_rule(next_to(X,Y),_,_,_,_,_,_,AH,A,_,_):-
    next_to(X,Y,AH,A,AH,A).

apply_rule(next_to(X,Y),_,_,_,_,_,_,_,_,AH,A):-
    next_to(X,Y,AH,A,AH,A).

apply_rule(next_to(X,Y),AH,A,BH,B,_,_,_,_,_,_):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),AH,A,_,_,BH,B,_,_,_,_):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),AH,A,_,_,_,_,BH,B,_,_):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),AH,A,_,_,_,_,_,_,BH,B):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),_,_,AH,A,BH,B,_,_,_,_):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),_,_,AH,A,_,_,BH,B,_,_):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),_,_,AH,A,_,_,_,_,BH,B):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),_,_,_,_,AH,A,BH,B,_,_):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),_,_,_,_,AH,A,_,_,BH,B):-
    next_to(X,Y,AH,A,BH,B).

apply_rule(next_to(X,Y),_,_,_,_,_,_,AH,A,BH,B):-
    next_to(X,Y,AH,A,BH,B).

% Match left_to term

apply_rule(left_to(X,Y),AH,A,_,_,_,_,_,_,_,_):-
    left_to(X,Y,AH,A,AH,A).

apply_rule(left_to(X,Y),_,_,AH,A,_,_,_,_,_,_):-
    left_to(X,Y,AH,A,AH,A).

apply_rule(left_to(X,Y),_,_,_,_,AH,A,_,_,_,_):-
    left_to(X,Y,AH,A,AH,A).

apply_rule(left_to(X,Y),_,_,_,_,_,_,AH,A,_,_):-
    left_to(X,Y,AH,A,AH,A).

apply_rule(left_to(X,Y),_,_,_,_,_,_,_,_,AH,A):-
    left_to(X,Y,AH,A,AH,A).

apply_rule(left_to(X,Y),AH,A,BH,B,_,_,_,_,_,_):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),AH,A,_,_,BH,B,_,_,_,_):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),AH,A,_,_,_,_,BH,B,_,_):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),AH,A,_,_,_,_,_,_,BH,B):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),_,_,AH,A,BH,B,_,_,_,_):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),_,_,AH,A,_,_,BH,B,_,_):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),_,_,AH,A,_,_,_,_,BH,B):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),_,_,_,_,AH,A,BH,B,_,_):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),_,_,_,_,AH,A,_,_,BH,B):-
    left_to(X,Y,AH,A,BH,B).

apply_rule(left_to(X,Y),_,_,_,_,_,_,AH,A,BH,B):-
    left_to(X,Y,AH,A,BH,B).

% Match right_to term

apply_rule(right_to(X,Y),AH,A,_,_,_,_,_,_,_,_):-
    right_to(X,Y,AH,A,AH,A).

apply_rule(right_to(X,Y),_,_,AH,A,_,_,_,_,_,_):-
    right_to(X,Y,AH,A,AH,A).

apply_rule(right_to(X,Y),_,_,_,_,AH,A,_,_,_,_):-
    right_to(X,Y,AH,A,AH,A).

apply_rule(right_to(X,Y),_,_,_,_,_,_,AH,A,_,_):-
    right_to(X,Y,AH,A,AH,A).

apply_rule(right_to(X,Y),_,_,_,_,_,_,_,_,AH,A):-
    right_to(X,Y,AH,A,AH,A).

apply_rule(right_to(X,Y),AH,A,BH,B,_,_,_,_,_,_):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),AH,A,_,_,BH,B,_,_,_,_):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),AH,A,_,_,_,_,BH,B,_,_):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),AH,A,_,_,_,_,_,_,BH,B):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),_,_,AH,A,BH,B,_,_,_,_):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),_,_,AH,A,_,_,BH,B,_,_):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),_,_,AH,A,_,_,_,_,BH,B):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),_,_,_,_,AH,A,BH,B,_,_):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),_,_,_,_,AH,A,_,_,BH,B):-
    right_to(X,Y,AH,A,BH,B).

apply_rule(right_to(X,Y),_,_,_,_,_,_,AH,A,BH,B):-
    right_to(X,Y,AH,A,BH,B).

% Match position term

apply_rule(position(X,P),DH,D,_,_,_,_,_,_,_,_):-
    position(X,P,DH,D).

apply_rule(position(X,P),_,_,DH,D,_,_,_,_,_,_):-
    position(X,P,DH,D).

apply_rule(position(X,P),_,_,_,_,DH,D,_,_,_,_):-
    position(X,P,DH,D).

apply_rule(position(X,P),_,_,_,_,_,_,DH,D,_,_):-
    position(X,P,DH,D).

apply_rule(position(X,P),_,_,_,_,_,_,_,_,DH,D):-
    position(X,P,DH,D).

%==========================================================================
%  related(...) States that two features belongs to same house
%==========================================================================
related(X,Y,DH1,D1,DH2,D2):-
    nth1(E1,D1,Y),
    nth1(E2,D2,X),
    nth1(I,DH1,E1),
    nth1(I,DH2,E2).

related(X,Y,DH1,D1,DH2,D2):-
    nth1(E1,D1,X),
    nth1(E2,D2,Y),
    nth1(I,DH1,E1),
    nth1(I,DH2,E2).

%==========================================================================
%  position(X,P,...) States that feature X belongs to house set by position P
%==========================================================================
position(X,P,DH,D):-
    nth1(PX,D,X),
    nth1(P,DH,PX).

%==========================================================================
%  next_to(X,Y,...) States that feature Y belongs to house next to house
% of featute X
%==========================================================================
next_to(X,Y,DH1,D1,DH2,D2):-
    right_to(X,Y,DH1,D1,DH2,D2).

next_to(X,Y,DH1,D1,DH2,D2):-
    left_to(X,Y,DH1,D1,DH2,D2).

%==========================================================================
%  right_to(X,Y,...) States that feature Y belongs to house right to house
% of featute X
%==========================================================================
right_to(X,Y,DH1,D1,DH2,D2):-
    nth1(E1,D1,X),
    nth1(E2,D2,Y),
    nth1(I,DH1,E1),
    nth1(J,DH2,E2),
    J#=I+1.

right_to(X,Y,DH2,D2,DH1,D1):-
    nth1(E1,D1,X),
    nth1(E2,D2,Y),
    nth1(I,DH1,E1),
    nth1(J,DH2,E2),
    J#=I+1.

%==========================================================================
%  left_to(X,Y,...) States that feature Y belongs to house left to house
% of featute X
%==========================================================================
left_to(X,Y,DH1,D1,DH2,D2):-
    nth1(E1,D1,X),
    nth1(E2,D2,Y),
    nth1(I,DH1,E1),
    nth1(J,DH2,E2),
    J#=I-1.

left_to(X,Y,DH2,D2,DH1,D1):-
    nth1(E1,D1,X),
    nth1(E2,D2,Y),
    nth1(I,DH1,E1),
    nth1(J,DH2,E2),
    J#=I-1.

go:-
    rules(Rules),
    length(Rules,RLen),

    nationalities(Nationalities),
    length(Nationalities,NationalitiesLen),
    length(NationalitiesH,NationalitiesLen),
    domain(NationalitiesH,1,NationalitiesLen),
    all_distinct(NationalitiesH),

    colors(Colors),
    length(Colors,ColorsLen),
    length(ColorsH,ColorsLen),
    domain(ColorsH,1,ColorsLen),
    all_distinct(ColorsH),

    cigarettes(Cigarettes),
    length(Cigarettes,CigarettesLen),
    length(CigarettesH,CigarettesLen),
    domain(CigarettesH,1,CigarettesLen),
    all_distinct(CigarettesH),

    drinks(Drinks),
    length(Drinks,DrinksLen),
    length(DrinksH,DrinksLen),
    domain(DrinksH,1,DrinksLen),
    all_distinct(DrinksH),

    pets(Pets),
    length(Pets,PetsLen),
    length(PetsH,PetsLen),
    domain(PetsH,1,PetsLen),
    all_distinct(PetsH),

    ( for(I,1,RLen),
        param(NationalitiesH,Nationalities,CigarettesH,Cigarettes,ColorsH,Colors,DrinksH,Drinks,PetsH,Pets,Rules)
        do
        nth1(I,Rules,Rule),
        apply_rule(Rule,NationalitiesH,Nationalities,CigarettesH,Cigarettes,ColorsH,Colors,DrinksH,Drinks,PetsH,Pets)
    ),

    labeling([],NationalitiesH),
    labeling([],CigarettesH),
    labeling([],ColorsH),
    labeling([],DrinksH),
    labeling([],PetsH),

     write('House: Nationality Cigarette Color Drink Pet'),nl,
    ( for(I,1,NationalitiesLen),
        param(NationalitiesH,Nationalities,CigarettesH,Cigarettes,ColorsH,Colors,DrinksH,Drinks,PetsH,Pets)
        do
        nth1(I,NationalitiesH,N2),
        nth1(N2,Nationalities,Nat),
        nth1(I,CigarettesH,C2),
        nth1(C2,Cigarettes,Cig),
        nth1(I,ColorsH,O2),
        nth1(O2,Colors,Col),
        nth1(I,DrinksH,D2),
        nth1(D2,Drinks,Dri),
        nth1(I,PetsH,P2),
        nth1(P2,Pets,Pet),
        format('~d: ~w ~w ~w ~w ~w',[I,Nat,Cig,Col,Dri,Pet]),
        nl
    ).
    
    
    
    
