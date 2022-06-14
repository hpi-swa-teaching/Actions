initilization
testSelectorsWithAnActionDefinedForAClass

	| action selectors | 
	
	action := AAction from: MockActionsA mockActionMoveUpAsList.
	self assert: (ATestAActions selectorsWith: action DefinedFor: MockActionsA) first equals: #actions.
	
	action := AAction from: MockActionsB mockActionMoveUpAsList.
	selectors := ATestAActions selectorsWith: action DefinedFor: MockActionsB.
	
	self assert: (self is: selectors equalTo: #(#actions #actionsDuplicate))
	