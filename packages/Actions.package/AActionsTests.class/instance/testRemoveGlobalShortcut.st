shortcuts
testRemoveGlobalShortcut

	| globalActionA globalActionB  |
	
	ATestAActions pragmaKeywords: { #wantsTestGlobalActions }.
	globalActionA := AMockGlobalRemoveSpecialActions globalRemoveAction.
	globalActionB := AMockGlobalRemoveActions globalRemoveAction.
	
	ATestAActions addShortcut: self shortcutCtrlb for: globalActionA in: AMockGlobalRemoveSpecialActions.
	self assert: globalActionA shortcuts first equals: self shortcutCtrlb.
	self assert: globalActionB shortcuts first equals: self shortcutCtrlb.
	
	ATestAActions removeShortcut: self shortcutCtrlb in: AMockGlobalRemoveSpecialActions.
	self deny: globalActionA hasShortcuts.
	self deny: globalActionB hasShortcuts.
		
	