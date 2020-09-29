as yet unclassified
updateAction: anActionDescription

	(Actions at: clazz ifAbsentPut: [Dictionary new])
		at: anActionDescription title
		put: anActionDescription.
	anActionDescription clazz: clazz