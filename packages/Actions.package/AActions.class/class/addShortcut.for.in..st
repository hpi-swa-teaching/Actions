handle shortcuts
addShortcut: aShortcut for: anAction in: aClass

	| association |
	association := (Actions at: aClass) associationAt: anAction title.
	(Shortcuts at: aClass ifAbsentPut: [Dictionary new])
		at: aShortcut put: association