handle actions
deleteAction: anActionDescription withDefault: aShortcut

	(self actionsAt: clazz ifAbsent: [^ self])
		removeKey: anActionDescription title.
	
	(self actionsAt: clazz) size = 0
		ifTrue: [Actions removeKey: clazz]