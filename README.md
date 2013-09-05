Generic zebra
==============

Generic zebra puzzle solver in SICStus Prolog using CSP.

Read more about Zebra at Wikipedia. http://en.wikipedia.org/wiki/Zebra_Puzzle

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

In the original puzzle there were five houses and five features. In this solver you can set unlimited number of features and houses.

Features
--------

When we are designing custom puzzle we need to choose features and their values. Number of values need to be same as number of houses. In this example we will work with tree houses (so we need to have each feature have tree values) and five features:

    features([
        [nationalities,[englishman,spaniard,ukrainian]],
        [colors,[red,green,blue]],
        [cigarettes,[chesterfields,parliaments,kools]],
        [drinks,[water,tea,milk]],
        [pets,[dog,zebra,fox]]]).

Rules
-----

Now we need to describe relationship between houses and features. This is done by rules that are translated to constrains in CSP. 

Rules are stored in list and described by Prolog fact *rules*.

    rules([...]).
    
In original puzzle there are several types of rules that are needed to be represented in way that our solver will understand them.

Rule types
----------
   
We need to say that values of two features belong to same house. This is done using *related* predicate. 
So rule "The Englishman lives in the red house." will be written as 
    
    related(englishman, red).

To specify feature for particular house we use *position* predicate.
"The Norwegian lives in the first house" is written as

    position(norwegian, 1).

To say that feature belongs to house next to or to left or right we use *next_to*, *left_to* or *right_to* predicate. 

"The Norwegian lives next to the blue house." is described as

    next_to(norwegian,blue).

We skip the *middle* rule.


Rule example
------------

    rules([
        position(englishman,1), % 1 rule
        right_to(englishman,green), % 2 rule
        right_to(green,parliaments), % 3 rule
        left_to(milk,zebra), % 4 rule
        related(ukrainian,water), % 5 rule
        related(tea,fox), % 6 rule
        left_to(ukrainian,kools), % 7 rule
        related(spaniard,milk)  % 8 rule
        ]).

Model
=====

There are N*M variables that are organized into matrix. N is number of features and M is number of houses. Rows corresponds to features, columns to feature values. Solution of the puzzle is reprezentetd as a matrix where the values are houses.

Domains of all variables corresponds to houses and have values 1..M.

Features values for each feature need to be set in different houses so all values in each row need to be different.

Other constrains are given by puzzle rules and we will note them in example bellow.

Model example
-------------

We will be working with feature table example from above. For example we have variable at position [3,2] of matrix with value 3. Numbers [3,2] are indexes to features table and in this case variable represents second feature value (parliaments) of third feature (cigarettes). So parliaments are smoked in third house.

We need to translate rules to constrains. First rule of rules example says that englishman lives in house 1. We find out that englishman have indices  [1,1]. We set variable at position [1,1] to 1.

Than we have rule right_to(englishman,green). This means that englishman lives next to green house. Green have indices [2,2] and house next to the englishmans house is house number two. So we set the variable at position [2,2] to 2.

If two feature values are in same house corresponding variables will haves same values.

Solution for this example will look:

    [[1,3,2],
     [1,2,3],
     [2,3,1],
     [2,1,3],
     [3,2,1]]


Solution will be formated to output:

    House: Nationality Cigarette Color Drink Pet
    1: englishman kools red tea fox
    2: ukrainian chesterfields green water zebra
    3: spaniard parliaments blue milk dog
    
    
Model rules description
-----------------------

- Two feature values are related and belongs to the same house.  

    A[I,J] == A[K,L]
    
    where
    
    I,K is index of feature
    
    J,L is index of appropriate feature value


- The feature value belongs to specific house H  

    A[I,J] == H
    
    where
    
    I is index of feature
    
    J is index of appropriate feature value
    
    H is house number

- Feature value belongs to the house right to another feature value house
    
    A[I,J] == A[K,L] + 1
    
    feature value with indices [I,J] is right to house with feature value whith indices [K,L]
    
- Feature value belongs to the house left to another feature value house
    
    A[I,J] == A[K,L] - 1
    
    feature value with indices [I,J] is left to house with feature value with indices [K,L]


- Feature value belongs to the house nexto to another feature value house
    
    A[I,J] == abs(A[K,L] - 1)
    
    feature value with indices [I,J] is next to house with feature value whith indices [K,L]
