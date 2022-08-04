shortcuts
testResetGlobalDefaultShortcutsForDoesNotEffectLocalActions

	| actionWithADefaultShortcut |
	
	actionWithADefaultShortcut := MockActions addLineAction clazz: AMockDefaultActionsA; yourself.
	self assert: actionWithADefaultShortcut hasDefaultShortcut.
	self deny: actionWithADefaultShortcut hasShortcuts.
	
	ATestAActions resetGlobalDefaultShortcutsFor: AMockDefaultActionsA.
	self deny: actionWithADefaultShortcut hasShortcuts.