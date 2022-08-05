duplicate checks
testCheckForNonExistingDuplicateActions

	self assert: (ATestAActions checkIfDuplicatesExistsFor: AMockActionsMoveUpToo) equals: nil
	
