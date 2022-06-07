initilization
testSelectorsWithActionsDefinedForAClass

	self assert: (ATestAActions selectorsWithActionsDefinedFor: MockActionsA) first equals: #actions.
	self assert: (ATestAActions selectorsWithActionsDefinedFor: MockActionsB) first equals: #actionsDuplicate.
	self assert: (ATestAActions selectorsWithActionsDefinedFor: MockActionsB) second equals: #actions
	