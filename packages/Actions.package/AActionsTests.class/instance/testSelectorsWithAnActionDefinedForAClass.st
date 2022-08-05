initilization
testSelectorsWithAnActionDefinedForAClass

	| action selectors | 
	
	action := AAction from: AMockActionsMoveUpDuplicate mockActionMoveUpAsList.
	self assert: (ATestAActions selectorsWith: action DefinedFor: AMockActionsMoveUpDuplicate) first equals: #actions.
	
	action := AAction from: AMockActionsMoveUp mockActionMoveUpAsList.
	selectors := ATestAActions selectorsWith: action DefinedFor: AMockActionsMoveUp.
	
	self assert: (self is: selectors equalTo: #(#actions #actionsDuplicate))
	