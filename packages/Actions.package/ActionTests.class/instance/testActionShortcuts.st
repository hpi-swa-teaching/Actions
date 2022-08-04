as yet unclassified
testActionShortcuts
	
	| action | 
	
	action := MockActions moveUpAction clazz: MockActionsA; yourself.
	
	ATestAActions 
		addShortcut: self shortcutCtrlb for: action in: MockActionsA;
		addShortcut: self shortcutCtrld for: action in: MockActionsA.
	
	self assert: action shortcuts first equals: self shortcutCtrlb.
	self assert: action shortcuts second equals: self shortcutCtrld
	