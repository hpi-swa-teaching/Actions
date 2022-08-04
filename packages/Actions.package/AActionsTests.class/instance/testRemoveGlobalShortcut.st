shortcuts
testRemoveGlobalShortcut

	| globalActionA globalActionB  |
	
	ATestAActions pragmaKeywords: { #wantsTestGlobalActions }.
	globalActionA := AMockGlobalActionsA globalRemoveAction.
	globalActionB := AMockGlobalActionsB globalRemoveAction.
	
	ATestAActions addShortcut: self shortcutCtrlb for: globalActionA in: AMockGlobalActionsA.
	self assert: globalActionA shortcuts first equals: self shortcutCtrlb.
	self assert: globalActionB shortcuts first equals: self shortcutCtrlb.
	
	ATestAActions removeShortcut: self shortcutCtrlb in: AMockGlobalActionsA.
	self deny: globalActionA hasShortcuts.
	self deny: globalActionB hasShortcuts.
		
	