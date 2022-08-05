shortcuts
testResetGlobalDefaultShortcutsForDoesNotEffectLocalActions

	| actionWithADefaultShortcut |
	
	actionWithADefaultShortcut := AMockActions addLineAction clazz: AMockActionAddLineAsList; yourself.
	self assert: actionWithADefaultShortcut hasDefaultShortcut.
	self deny: actionWithADefaultShortcut hasShortcuts.
	
	ATestAActions resetGlobalDefaultShortcutsFor: AMockActionAddLineAsList.
	self deny: actionWithADefaultShortcut hasShortcuts.