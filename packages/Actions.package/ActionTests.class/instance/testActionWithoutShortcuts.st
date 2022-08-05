shortcuts
testActionWithoutShortcuts
	
	| action | 
	
	action := AMockActions moveUpAction clazz: AMockActionsMoveUpDuplicate; yourself.
	
	self assert: action hasShortcuts equals: false
	