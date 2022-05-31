initilization
testCheckForNonExistingDuplicateActions

	self assert: (AActions checkIfDuplicatesExistsFor: MockActionsC) equals: nil
	
