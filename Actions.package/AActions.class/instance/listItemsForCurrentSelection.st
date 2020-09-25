as yet unclassified
listItemsForCurrentSelection

	| shortcuts items |
	shortcuts := self class 
						shortcutsFor: self selectedAction 
						in: self selectedClass 
						ifAbsent: [^ {}]. 
	items := OrderedCollection with: #-.
	shortcuts do: [:each | items add: {'Remove ', each . 
			[self removeShortcut: each] . 
			'Removes the displayed shortcut from the system'}].
	
	^ items