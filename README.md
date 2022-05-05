# Actions
Prototype for a Squeak/Smalltalk shortcut system


# Styleguide

## Naming

Important rules that you should keep in mind and especially check are underlined.

1. <ins>Choose names that are **descriptive**</ins>
    - **timeOfDay**, not tod
    - **milliseconds**, not millis
2. Choose names that have a unique pronunciation
3. Capitalize class names, global variables and pool dictionaries
4. <ins>Do not capitalize instance and temporary variables, parameters, and methods</ins>
5. Choose a name indicative of a classification of objects
    - **ProblemReport**, not Application (too generic)
    - **TreeWalker**, not TreeWalkerForBinaryTrees (too specific)
6. Avoid namespace collisions by adding a project-specific prefix to the class name (up to four characters, capitalized)
    - **NASA**SpaceShip, **AS**Aspect, **CX**Layer, **INV**Invader, …
7. <ins>Avoid naming a class that implies anything about its implementation</ins>
    - **PrDatabase**, not PrDictionary (aggregation)
    - **ProperName**, not ProperNameString (aggregation)
    - **SortedSet** (inheritance)
8. Create class names from words suggesting objects in natural language
9. <ins>Form variable names from words suggesting objects in natural language</ins>
    - **phoneNumber**, not number
    - **highScore**, not value
10. Use common nouns and phrases for objects that are not Boolean
11. Use predicate clauses or adjectives for Boolean objects or state
12. <ins>Choose method names so that code reads as a sentence</ins>
13. <ins>Use imperative verbs and phrases for methods which perform an action</ins>
    - aReadStream **peekWord**, not aReadStream word
14. <ins>Use a phrase beginning with a verb for methods that answer a Boolean</ins>
    - aPerson **isHungry**, not aPerson hungry
15. Use common nouns for methods which answer a specific object
16. (Avoid the parameter type or name in the method name)
    - fileSystem **at**: aKey **put**: aFile, not fileSystem atKey: aKey putFile: aFile
17. Use a verb with a preposition for methods that specify objects
    - File **openOn**: aStream, not File on: aStream
18. Use #new for instance creation methods; #initialize for setting values
19. <ins>Use a descriptive method name to create an object that requires initialization (like constructors)</ins>
    ```Smalltalk
    BookEntry class>>newWithName: aName phoneNumber: aPhoneNumber
        
        ^ self new
            name: aName;
            phoneNumber: aPhoneNumber;
            yourself
    ```
20. A get method should have the same name as the variable
21. When two get methods effectively return the same variable, but one adds behavior, prefix the actual get method with basic
    ```Smalltalk
    books

        ^ self basicBooks copy
    ```
    ```Smalltalk
    basicBooks

        ^ books
    ```
22. A set method should have the same name as the variable, followed by a colon
23. <ins>Boolean variables require more than the standard accessor methods</ins>
    - **is**Private, **be**Private, **be**Public, **toggle**PublicPrivate
24. Typed parameter names should indicate **the most general class** of objects
    - anInteger, aString, aRectangle, aFile, …
25. <ins>Use **semantic and type** information for parameter names that are the same type</ins>
    - Rectangle>>origin: **topLeftPoint** corner: **bottomRightPoint**
26. Use a temporary variable for only one purpose
27. Represent numbers in a consistent fashion
    - pi := 3.1415927
    - textDisplayRatio := **1/3**, not textDisplayRatio := 0.3333333333333
28. <ins>Do not use hard-coded numbers (**magic numbers**) in an expression. Wir versuchen besonders Kommazahlen in Gleichungen zu verhindern. Jede Zahl, die man gut auslagern kann, kann man schön als Klassenvariable einspeichern</ins>
29. <ins>Spell out identifiers completely</ins>
    - **receivedTime**, not rcvdTime or rTime
30. When you need to abbreviate, use a consistent abbreviation strategy
31. Square Brackets always in block form and without whitespaces.
## Comments

1. Make comments succinct, concise, and grammatically correct
2. Do not comment bad code – rewrite it
3. Comment for a class
4. Specify methods to be implemented by a subclass in abstract class comments
    ```Smalltalk
    Collection>>do: aBlock

        "Evaluate aBlock with each of the receiver's elements as the argument."
        ^ self subclassResponsibility
    ```

## Methods

```Smalltalk
decreaseSizeBy: anInteger

    "Comment describing the method (if necessary)"
    self size: (self size - anInteger).
    self update
```

Notice the following:
- Method name describes parameter `anInteger`
- Empty line between method declaration and comment (or first code statement)
- No dot at the end of the last statement

---

```Smalltalk
decreaseSizeBy: anInteger

    "Comment describing the method (if necessary)"
    | newSize |
    newSize := self size - anInteger.
    self size: newSize.
    self update.

    ^ newSize
```

Notice the following:
- Temp. variables after comment
- Temp. variables should be as descriptive as possible (avoid shortening like `nSize`)
- Only use brackets when necessary (I hope in this example they aren't necessary)
- Empty line between last code and return statement
- Return statement has no dot at the end
