duplicate checks
testCheckForNonExistingDuplicateActions

	self assert: (ATestAActions checkIfDuplicatesExistsFor: MockActionsC) equals: nil
	
