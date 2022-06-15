accessing
classIndex: anInteger

	super classIndex: anInteger.
	
	self selectedClass ifNotNil:  [self checkForDuplicatesFor: self selectedClass]
	