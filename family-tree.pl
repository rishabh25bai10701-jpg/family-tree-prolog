% Facts for gender
male(mohan).
male(vijay).
male(sanjay).
male(kiran).
male(arjun).
male(deepak).

female(neeta).
female(priya).
female(rani).
female(aisha).
female(seem).
female(rekha).

% Facts for parent-child relationships: parent(Parent, Child)
parent(mohan, neeta).
parent(mohan, vijay).
parent(neeta, priya).
parent(neeta, sanjay).
parent(vijay, rani).
parent(vijay, kiran).
parent(rani, arjun).
parent(kiran, deepak).
parent(priya, aisha).
parent(sanjay, seem).

% Facts for spousal relationships: married(Person1, Person2)
% Assumes symmetry (if Mohan is married to Rekha, Rekha is married to Mohan)
married(mohan, rekha).
married(rekha, mohan).
married(vijay, priya).
married(priya, vijay).
married(kiran, seem).
married(seem, kiran).
married(arjun, aisha).
married(aisha, arjun).

% FAMILY TREE RULES (LOGIC)
% The rules remain exactly the same as they define the logical relationships

% Rule 1: Mother
mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).

% Rule 2: Father
father(Father, Child) :-
    parent(Father, Child),
    male(Father).

% Rule 3: Grandparent
grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).

% Rule 4: Sibling (Brother or Sister)
sibling(Person1, Person2) :-
    parent(P, Person1),
    parent(P, Person2),
    Person1 \= Person2.

% Rule 5: Sister
sister(Sister, Person) :-
    sibling(Sister, Person),
    female(Sister).

% Rule X: Brother (Added the missing rule from the previous response)
brother(Brother, Person) :-
    sibling(Brother, Person),
    male(Brother).

% Rule 6: Aunt
aunt(Aunt, Child) :-
    parent(Parent, Child),
    sister(Aunt, Parent).

% Rule 7: Uncle
uncle(Uncle, Child) :-
    parent(Parent, Child),
    brother(Uncle, Parent).

% Rule 8: Ancestor (Recursive Definition)
ancestor(Ancestor, Descendant) :-
    parent(Ancestor, Descendant).

ancestor(Ancestor, Descendant) :-
    parent(Ancestor, P),
    ancestor(P, Descendant).
