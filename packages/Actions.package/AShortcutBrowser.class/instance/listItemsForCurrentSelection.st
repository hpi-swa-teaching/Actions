as yet unclassified
listItemsForCurrentSelection

	| shortcuts items |
	
	shortcuts := self aactionsApi
						shortcutsFor: self selectedAction 
						in: self selectedClass 
						ifAbsent: [^ {}]. 
	items := OrderedCollection with: #-.
	shortcuts do: [:each | | stream |
		stream := WriteStream on: ''.
		each printKeyStringOn: stream.
		items add: {'Remove ', stream contents . 
			[self removeShortcut: each] . 
			'Removes the displayed shortcut from the system'}].
	
	^ items