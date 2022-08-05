shortcuts
testActionWithShortcuts
	
	| action | 
	
	action := AMockActions moveUpAction clazz: AMockActionsMoveUpDuplicate; yourself.
	
	ATestAActions 
		addShortcut: self shortcutCtrlb for: action in: AMockActionsMoveUpDuplicate;
		addShortcut: self shortcutCtrld for: action in: AMockActionsMoveUpDuplicate.
	
	self assert: action shortcuts first equals: self shortcutCtrlb.
	self assert: action shortcuts second equals: self shortcutCtrld.
	self assert: action hasShortcuts
	