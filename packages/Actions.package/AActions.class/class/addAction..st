as yet unclassified
addAction: anActionDescription

	| dict title |
	title := anActionDescription title.
	dict := Actions at: clazz ifAbsentPut: [Dictionary new].
	(dict includesKey: title)
		ifTrue: [
			UIManager default inform:  'You defined the action: ', title , ' multiple times. The duplicates will get ignored. Please resolve the duplicates.'.
			^ self].
	dict
		at: title
		put: anActionDescription.
	anActionDescription clazz: clazz