handle shortcuts
addShortcut: aShortcut for: anAction in: aClass
	
	(anAction isGlobal)
		ifTrue:[self addGlobalShortcut: aShortcut for: anAction]
		ifFalse:[^self addLocalShortcut: aShortcut for: anAction in: aClass]
	