shortcuts
testClassesWithAnActionAtAnEventKey
	
	| classes |
	ATestAActions 
		addShortcut: self shortcutCtrlb for: AMockActions moveUpAction in: AMockActionAddLineAsList  ;
		addShortcut: self shortcutCtrlb for: AMockActions moveUpAction in: AMockActionsMoveUpDuplicate.
	
	classes := ATestAActions classesWith: AMockActions moveUpAction at: self shortcutCtrlb.
	
	self 
		assert: classes size equals: 2;
		assert: classes first equals: AMockActionAddLineAsList;
		assert: classes second equals: AMockActionsMoveUpDuplicate.
	