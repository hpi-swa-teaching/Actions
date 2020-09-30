handle actions
removeAllActionsOf: aClass

	Shortcuts removeKey: aClass ifAbsent: [].
	Actions removeKey: aClass ifAbsent: []