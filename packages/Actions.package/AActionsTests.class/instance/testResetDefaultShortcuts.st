shortcuts
testResetDefaultShortcuts

	| actionWithADefaultShortcut |
	
	actionWithADefaultShortcut := MockActions addLineAction clazz: AMockDefaultActionsA; yourself.
	self assert: actionWithADefaultShortcut hasDefaultShortcut.
	self deny: actionWithADefaultShortcut hasShortcuts.
	
	ATestAActions pragmaKeywords: { #wantsTestDefaultActions }.
	ATestAActions resetDefaultShortcuts.
	
	self assert: actionWithADefaultShortcut hasShortcuts.
	self assert: actionWithADefaultShortcut shortcuts first equals: self shortcutCtrlb