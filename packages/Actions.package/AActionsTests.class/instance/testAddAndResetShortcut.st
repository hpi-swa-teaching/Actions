shortcuts
testAddAndResetShortcut

	| shortcut1 action1 |
	
	shortcut1 := self shortcutCtrlb.
		
	action1 := AAction from: AMockActionsMoveUpDuplicate mockActionMoveUpAsList.
	
	ATestAActions addShortcut: shortcut1 for: action1 in: AMockActionsMoveUpDuplicate.
	self assert: (ATestAActions shortcutsFor: action1 in: AMockActionsMoveUpDuplicate ifAbsent: []) first equals: shortcut1.
	
	ATestAActions resetLocalDefaultShortcutsFor: AMockActionsMoveUpDuplicate.
	self assert: (ATestAActions shortcutsFor: action1 in: AMockActionsMoveUpDuplicate ifAbsent: []) equals: nil.