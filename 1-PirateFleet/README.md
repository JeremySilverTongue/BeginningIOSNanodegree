# Jeremy's Pirate Fleet

This repository is for the Pirate Fleet app for Udacity's Beginning iOS App Development.

# Rubric

> The student has created an object diagram describing the underlying objects and relationships that exist in Pirate Fleet app.

You have no idea how mad I am that I had to reinstall ArgoUML. I made a little UML diagram. I hope it sufficies.

> The student has added objects and relationships that go beyond the basic ones and demonstrate a deeper understanding of the object-oriented design of Pirate Fleet.

Formally speaking, the ships and mines have nothing to do with eachother. We could have a protocol that they both impliment, but that's not the direciton Jarrod decided to go. 

> The student has instantiated and added all proper ships required to start a game.

Done and done.

> The student has created the Mine struct.

Yep, though I had to modify the `_Mine_` protocol. The properties were `(get set)`, which doesn't make sense if we're implimenting it with a struct.

> The student has instantiated and added the two mines required to start a game.

Done and dusted.

> The student has correctly implemented the calculateFinalScore function.

Roger that. Well I think so. There are no test cases, so I have no idea.
