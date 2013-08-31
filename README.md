Generic zebra
==============

Generic zebra puzzle solver in SICStus Prolog using CSP

Inspired by idea from: http://www.hakank.org/sicstus/crossword2.pl

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

When we are designing custom puzzle we need to choose number of houses. Than we need to set values for features. This is done using special facts (nationalities, colors, cigarettes...). In this example we work with tree houses, so we need to have each feature have tree values:

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
    
In original puzzle there are several rules that are needed to be represented in way that our solver will understand them.
    
We need to say that values of two features belong to same house. This is done using *related* predicate. 
So rule "The Englishman lives in the red house." will be written as 
    
    related(englishman, red).

To specifi feature for particular house we use *position* predicate.
"The Norwegian lives in the first house" is written as

    position(norwegian, 1).

To say that feature belogs to house next to or to left or right we use *next_to*, *left_to* or *right_to* predicate. 

"The Norwegian lives next to the blue house." is described as

    next_to(norwegian,blue).

We skip the *middle* rule.

Modeling and solving technique
==============================

Features are represented as list of possible values, e.g. nationalities([englishman,spaniard,ukrainian]).

For each feature list there is also another auxiliary list that records feature for houses. 
First position of this auxiliary list holds value for first house, second position second house and so on. 
Value on given position is index to appropriate feature list. This means that if we have auxiliary list nations [2, 1, 3] in this the first house live spaniard, second englishman and third ukrainian.

For CSP modeling we use auxiliary feature lists. As we said before each position in this list represents house and its value represent feature value.
Domains of CSP are indices in features list. These are numbers from {1 .. number of houses}. Every house need to have different value so we use all_distinct to auxiliary feature list.

Other constrains are modeled after rules in puzzle. For example we have rule "The Englishman lives in the red house." and colors feature list looks like *colors([green,blue,red])*.
We have nations auxiliary list [2, 1, 3]. Englishman have in nationality feature list index 1 so from nations auxiliary list we know that he lives in second house. 
From this we know that second house need to be blue. Blue is on position two on feature list so we will set first position on color auxiliary list to 2.

Solving
-------

Solver is loading rules from the rules list and translate them into constrains and these are processed by Prolog.
