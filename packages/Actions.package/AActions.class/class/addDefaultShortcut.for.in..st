handle shortcuts
addDefaultShortcut: aShortcut for: anAction in: aClass

	| shortcuts |
	shortcuts := (Shortcuts at: aClass ifAbsentPut: [Dictionary new]).
	(shortcuts includesKey: anAction title)
		ifFalse:[self addShortcut: aShortcut for: anAction in: aClass name]