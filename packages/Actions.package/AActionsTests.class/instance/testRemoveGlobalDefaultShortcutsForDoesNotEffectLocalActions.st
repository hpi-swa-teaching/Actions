shortcuts
testRemoveGlobalDefaultShortcutsForDoesNotEffectLocalActions

	| actionWithADefaultShortcut |
	
	actionWithADefaultShortcut := AMockActions addLineAction clazz: AMockActionAddLineAsList; yourself.
	self assert: actionWithADefaultShortcut hasDefaultShortcut.
	self deny: actionWithADefaultShortcut hasShortcuts.
	
	ATestAActions pragmaKeywords: { #wantsTestDefaultActions }.
	ATestAActions resetDefaultShortcuts.
	ATestAActions removeGlobalShortcutsFor: AMockActionAddLineAsList.
	
	self assert: actionWithADefaultShortcut hasShortcuts.
	self assert: actionWithADefaultShortcut shortcuts first equals: self shortcutCtrlb