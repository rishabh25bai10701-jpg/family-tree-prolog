Project Statement: Prolog-Based Family Tree Knowledge System


**1. Problem Statement**

Modern family structures, often spanning multiple generations, create complex networks of kinship relations (sibling, cousin, uncle, aunt, ancestor, etc.). Manually determining these relationships—especially distant ones or those involving multiple steps (e.g., "What is my mother's brother's wife's relationship to me?")—is prone to error and time-consuming.

The problem this project addresses is the need for a rigorous, automated system capable of storing fundamental kinship facts and using declarative logic to infer all possible complex relationships accurately and instantly. This transforms a simple list of people into a functional, queryable knowledge base.



 **2. Scope of the Project**



The scope of this project is confined to creating and validating a purely logical knowledge base using SWI-Prolog.



Inclusions:


Fundamental Facts: Storing static data (gender, direct parent-child relationships, and marital status).

Core Relationship Inference: Defining and implementing logical rules for direct and common indirect relationships (Mother, Father, Grandparent, Sibling, Uncle, Aunt).

Recursive Logic: Implementing recursive rules to handle arbitrary generational depth (e.g., Ancestor/Descendant).

Querying: Demonstrating the ability to ask complex questions to the system (e.g., finding all siblings, or verifying if a specific relationship exists).


Exclusions:

User Interface (UI): The project operates entirely within the Prolog console environment.

External Data Integration: Data is hardcoded in the .pl file; no database or external files are used for persistence.

Non-Biological Relationships: Adoption, step-relationships, and other non-standard kinship links are excluded, focusing only on biological and marital ties as defined by the parent/2 facts.



 **3. Target Users**


Target User                                                        Primary Use Case



Computer Science Students                                          Learning and demonstrating the principles of declarative programming and logic programming using Prolog.



Genealogy Enthusiasts                                              A simple, powerful tool for logically validating complex family relationships without relying on manual database lookups.


Educational/Research Entities                                      A clear, minimal example of a functional Knowledge-Based System used for teaching logical inference and recursion.





**4. High-Level Features**


The system offers the following logical inference and data retrieval capabilities:



**Feature 1**: Factual Roster Management


The system acts as a central repository for the foundational family data:

Ability to assert and verify the male(X) and female(X) facts.

Ability to assert and verify the parent(X, Y) and married(X, Y) facts.



**Feature 2:** Core Kinship Deduction


The project uses defined rules to deduce one- and two-step relationships:

Identify direct relations: Mother and Father.

Identify symmetrical relations: Sibling (Brother, Sister).

Identify common indirect relations: Grandparent, Uncle, and Aunt.



 **Feature 3:** Recursive Generational Search

The most powerful feature, enabling indefinite traversal of the family line:

Determine the full set of Ancestors and Descendants for any given individual, regardless of generational depth.

