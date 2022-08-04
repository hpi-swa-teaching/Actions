shortcuts
testAddAndRemoveShortcut

	| shortcut1 shortcut2 action1 action2 |
	
	shortcut1 := self shortcutCtrlb.
	shortcut2 := self shortcutCtrld.
		
	action1 := AAction from: MockActionsA mockActionMoveUpAsList.
	action2 := AAction from: MockActionsA mockActionMoveDownAsList.
	
	ATestAActions addShortcut: shortcut1 for: action1 in: MockActionsA.
	ATestAActions addShortcut: shortcut2 for: action2 in: MockActionsA.
	
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) first equals: shortcut1.
	self assert: (ATestAActions shortcutsFor: action2 in: MockActionsA ifAbsent: []) first equals: shortcut2.
	
	ATestAActions removeShortcut: shortcut1 in: MockActionsA.
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) equals: nil.
	self assert: (ATestAActions shortcutsFor: action2 in: MockActionsA ifAbsent: []) first equals: shortcut2.

	ATestAActions removeShortcuts.
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) equals: nil.
	self assert: (ATestAActions shortcutsFor: action2 in: MockActionsA ifAbsent: []) equals: nil.
		
	
