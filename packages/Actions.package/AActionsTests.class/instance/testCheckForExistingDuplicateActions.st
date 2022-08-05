duplicate checks
testCheckForExistingDuplicateActions

	| actionTitleA actionTitleB |
	
	"Check for duplicates in same method and check for duplicates in different methods"
	actionTitleA := (AAction from: AMockActionsMoveUpDuplicate mockActionMoveUpAsList) title.
	self assert: (ATestAActions checkIfDuplicatesExistsFor: AMockActionsMoveUpDuplicate) title equals: actionTitleA.
	
	actionTitleB := (AAction from: AMockActionsMoveUp mockActionMoveUpAsList) title.
	self assert: (ATestAActions checkIfDuplicatesExistsFor: AMockActionsMoveUp) title equals: actionTitleB
	
