initilization
testSelectorsWithAnActionDefinedForAClass

	| action | 
	
	action := AAction from: MockActionsA mockActionMoveUpAsList.
	self assert: (ATestAActions selectorsWith: action DefinedFor: MockActionsA) first equals: #actions.
	
	action := AAction from: MockActionsB mockActionMoveUpAsList.
	self assert: (ATestAActions selectorsWith: action DefinedFor: MockActionsB) first equals: #actionsDuplicate.
	self assert: (ATestAActions selectorsWith: action DefinedFor: MockActionsB) second equals: #actions
	