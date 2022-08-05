handle shortcuts
addGlobalShortcut: aShortcut for: anAction

	(self classesProviding: anAction) keysAndValuesDo: [:class :actions | actions do: 
		[:action | self addLocalShortcut: aShortcut for: action in: class]]
	