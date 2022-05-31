initilization
testSelectorsWithAnActionDefinedForAClass

	| action | 
	
	action := AAction from: MockActionsA mockActionMoveUpAsList.
	self assert: (AActions selectorsWith: action DefinedFor: MockActionsA) first equals: #actions.
	
	action := AAction from: MockActionsB mockActionMoveUpAsList.
	self assert: (AActions selectorsWith: action DefinedFor: MockActionsB) first equals: #actionsDuplicate.
	self assert: (AActions selectorsWith: action DefinedFor: MockActionsB) second equals: #actions
	