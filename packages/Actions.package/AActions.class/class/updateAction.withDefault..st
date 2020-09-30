handle actions
updateAction: anActionDescription withDefault: aShortcut

	self flag: #Todo. "Warn for multiple declaration of same action"

	(self actionsAt: clazz ifAbsentPut: [Dictionary new])
		at: anActionDescription title
		put: anActionDescription.
	anActionDescription clazz: clazz.
	
	self addDefaultShortcut: aShortcut for: anActionDescription in: clazz