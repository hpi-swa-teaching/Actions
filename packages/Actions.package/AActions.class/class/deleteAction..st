as yet unclassified
deleteAction: anActionDescription

	(Actions at: clazz ifAbsent: [^ self])
		removeKey: anActionDescription title.
	
	(Actions at: clazz) size = 0
		ifTrue: [Actions removeKey: clazz]