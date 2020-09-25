as yet unclassified
listItemsForCurrentSelection

	| shortcut |
	shortcut := self class shortcutFor: self selectedAction in: self selectedClass ifAbsent: [^ {}]. 
	^ {
		#- . 
		{'Remove ', shortcut . 
			[self removeShortcut: shortcut] . 
			'Removes the displayed shortcut from the system'}
	}