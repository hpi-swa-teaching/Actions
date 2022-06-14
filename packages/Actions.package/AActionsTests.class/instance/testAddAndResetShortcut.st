initilization
testAddAndResetShortcut

	| shortcut1 action1 |
	
	shortcut1 := KeyboardEvent new 
		setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: 98 hand: nil stamp: nil;
		yourself.
		
	action1 := AAction from: MockActionsA mockActionMoveUpAsList.
	
	ATestAActions addShortcut: shortcut1 for: action1 in: MockActionsA.
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) first equals: shortcut1.
	
	ATestAActions resetDefaultShortcutsFor: MockActionsA.
	self assert: (ATestAActions shortcutsFor: action1 in: MockActionsA ifAbsent: []) equals: nil.