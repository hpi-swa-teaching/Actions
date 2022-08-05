shortcuts
testAddGlobalShortcut

	| globalActionA globalActionB  |
	
	ATestAActions pragmaKeywords: { #wantsTestGlobalActions }.
	globalActionA := AMockGlobalActionsA globalRemoveAction.
	globalActionB := AMockGlobalActionsB globalRemoveAction.
	self assert: globalActionA isGlobal.
	self assert: globalActionB isGlobal.
	
	self deny: globalActionA hasShortcuts.
	self deny: globalActionB hasShortcuts.
	
	ATestAActions addShortcut: self shortcutCtrlb for: globalActionA in: AMockGlobalActionsA.
	self assert: globalActionA shortcuts first equals: self shortcutCtrlb.
	self assert: globalActionB shortcuts first equals: self shortcutCtrlb	
	