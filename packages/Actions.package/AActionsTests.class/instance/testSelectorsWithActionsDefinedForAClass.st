initilization
testSelectorsWithActionsDefinedForAClass
	
	| selectors correctSelectors |
	self assert: (ATestAActions selectorsWithActionsDefinedFor: MockActionsA) first equals: #actions.
	
	selectors := ATestAActions selectorsWithActionsDefinedFor: MockActionsB.
	correctSelectors := #( #actionsDuplicate #actions).
	
	self assert: (self is: selectors equalTo: correctSelectors).
	