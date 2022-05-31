initilization
testSelectorsWithActionsDefinedForAClass

	self assert: (AActions selectorsWithActionsDefinedFor: MockActionsA) first equals: #actions.
	self assert: (AActions selectorsWithActionsDefinedFor: MockActionsB) first equals: #actionsDuplicate.
	self assert: (AActions selectorsWithActionsDefinedFor: MockActionsB) second equals: #actions
	