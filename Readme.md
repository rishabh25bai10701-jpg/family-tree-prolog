**Prolog Family Tree Database**

This document provides instructions and details for the Prolog code defining a basic family tree database.



**Overview**

This Prolog code establishes facts about gender and parent-child relationships, along with rules to infer common family relationships (mother, father, sibling, grandparent, ancestor, aunt, uncle).



**Prerequisites**

To run this code, you need a Prolog interpreter installed on your system, such as:

SWI-Prolog (Recommended)

GNU Prolog (gprolog)


**Structure of the Code**

The code is divided into two main sections:


**1. Facts**

Facts define the fundamental data of the family tree.

Gender Facts:

male(Person).

female(Person).

Parent-Child Facts:

parent(Parent, Child). (e.g., parent(mohan, neeta).)

Spousal Facts (Used for reference, but not directly in the current rules):

married(Person1, Person2). (Defined symmetrically)



**2. Rules (Logic)**

Rules define how to infer relationships based on the established facts.

Rule Predicate	Definition

mother(Mother, Child)	A parent who is female.

father(Father, Child)	A parent who is male.

grandparent(G, GC)	A person who is a parent of a parent.

sibling(P1, P2)	Two distinct individuals who share a common parent.

sister(Sister, Person)	A sibling who is female.

brother(Brother, Person)	A sibling who is male.

aunt(Aunt, Child)	The sister of a child's parent.

uncle(Uncle, Child)	The brother of a child's parent.

ancestor(A, D)	Defined recursively: a person is an ancestor if they are a parent or an ancestor of a parent.



**How to Run the Code**

Save the Code: Save the provided Prolog code in a file named family.pl (or any other name with a .pl extension).

Start Prolog: Open your terminal or command prompt and start the Prolog interpreter (e.g., type swipl).

Consult the File: Load the code into the interpreter using the consult command:

Prolog

?- consult('family.pl').

(Prolog will usually respond with true.)



**Example Queries**

Once the file is consulted, you can ask the interpreter questions about the relationships defined in the database:

Goal	Description	Expected Output Example

parent(mohan, X).	Find all children of Mohan.	X = neeta ; X = vijay ; false.

mother(M, seem).	Who is the mother of seem?	false. (Based on current facts)

grandparent(G, deepak).	Who are the grandparents of deepak?	G = vijay ; false.

sister(neeta, P).	Who is neeta a sister to?	P = vijay ; false.

ancestor(A, arjun).	Find all ancestors of arjun.	A = rani ; A = vijay ; A = mohan ; false.



**Important Notes**

Gender Consistency: Ensure all individuals defined as parent or sibling also have a corresponding male/1 or female/1 fact for the rules (mother, father, brother, sister, aunt, uncle) to work correctly.

Missing Information: If a relationship is not explicitly defined in the facts (e.g., the mother of seem), the query will logically fail (false).

Symmetry of sibling: The sibling rule is inherently symmetrical: if sibling(A, B) is true, then sibling(B, A) is also true.

