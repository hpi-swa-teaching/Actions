initilization
testAddAndResetShortcut

	| shortcut1 action1 |
	
	shortcut1 := self shortcutCtrlb.
		
	action1 := AAction from: MockActionsA mockActionMoveUpAsList.
	
	ATestAActions addShortcut: shortcut1 for: action1 in: MockActionsA.
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) first equals: shortcut1.
	
	ATestAActions resetLocalDefaultShortcutsFor: MockActionsA.
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) equals: nil.