handle actions
addAction: anActionDescription withDefault: aShortcut

	| dict title |
	title := anActionDescription title.
	dict := self actionsAt: clazz ifAbsentPut: [Dictionary new].
	(dict includesKey: title)
		ifTrue: [
			UIManager default inform:  'You defined the action: ', title , ' multiple times. The duplicates will get ignored. Please resolve the duplicates.'.
			^ self].
	dict
		at: title
		put: anActionDescription.
	anActionDescription clazz: clazz.
	
	self addDefaultShortcut: aShortcut for: anActionDescription in: clazz