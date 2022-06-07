initilization
testCheckForNonExistingDuplicateActions

	self assert: (ATestAActions checkIfDuplicatesExistsFor: MockActionsC) equals: nil
	
