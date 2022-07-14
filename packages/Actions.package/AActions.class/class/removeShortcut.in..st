handle shortcuts
removeShortcut: anEventKey in: aClass

	|action|
	
	action := (Shortcuts at: aClass) at: anEventKey.
	
	(action isGlobal) 
		ifTrue: [self removeGlobalShortcut: anEventKey of: action] 
		ifFalse: [self removeLocalShortcut: anEventKey in: aClass]


	