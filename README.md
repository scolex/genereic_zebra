Generic zebra
==============

Generic zebra puzzle solver in SICStus Prolog using CSP

Inpired by idea from: http://www.hakank.org/sicstus/crossword2.pl

Usage
=====

Run SICStus Prolog.

Load one of examples included in repository:

    | ?- consult(example2).

Load solver

    | ?- consult(zebra).

Run solver

    | ?- go.
   
Solution will be written on the output.

Writing custom puzzle
=====================

In the original puzzle there were five houses and five features. This solver also expect five hardcoded features but number of houses is unrestricted. This five features are Nationalities, Cigarettes, Colors, Drinks, Pets. Each of this feature have number of distinct values. Number of values is same for all features and corresponds to number of houses.

Features
--------

When we are designing custom puzzle we need to choose humber of houses. Than we need to set values for features. This is done using special facts (nationalities, colors, cigarettes...). In this example we work with tree houses, so we need to have each feature have tree values:

      nationalities([englishman,spaniard,ukrainian]).
      colors([red,green,blue]).
      cigarettes([chesterfields,parliaments,kools]).
      drinks([water,tea,milk]).
      pets([dog,zebra,fox]).

Rules
-----

Now we need to describe relationship between houses and their features. This is done by rules that are later translated to constrains in CSP. 

Rules are stored in list and described by prolog fact *rules*.

    rules([...]).
    
In original puzzle there are several rules that are needed to be represented in way that our solver will underestand them.
    
We need to say that values of two features belong to same house. This is done using *related* predicate. 
So rule "The Englishman lives in the red house." will be written as 
    
    related(englishman, red).

To specifi feature for particular house we use *position* predicate.
"The Norwegian lives in the first house" is written as

    position(norwegian, 1).

To say that feature belogs to house next to or to left or right we use *next_to*, *left_to* or *right_to* predicate. 

"The Norwegian lives next to the blue house." is described as

    next_to(norwegian,blue).

We skip te *middle* rule.

Solving technique
=================

This solver is using CSP.

Remember that features are represented as list of possible values, e.g. nationalities([englishman,spaniard,ukrainian]).

For each feature list there is also another auxiliary list that represents feature for houses. First position of this list stores value for first house, second position second house and so on. Value on given position is index to appropriate feature list. This means that if we have auxiliary list nations [2, 1, 3] in this the first house live spaniard, second englishman and third ukrainian.

Solver is loading rules from rules list and translate them into constrains and these are processed by Prolog.
