initilization
testSelectorsWithActionsDefinedForAClass
	
	| selectors correctSelectors |
	self assert: (ATestAActions selectorsWithActionsDefinedFor: AMockActionsMoveUpDuplicate) first equals: #actions.
	
	selectors := ATestAActions selectorsWithActionsDefinedFor: AMockActionsMoveUp.
	correctSelectors := #( #actionsDuplicate #actions).
	
	self assert: (self is: selectors equalTo: correctSelectors).
	