accessing
classIndex: anInteger

	super classIndex: anInteger.
	self actionIndex: 1.
	self selectedClass ifNotNil:  [self checkForDuplicatesFor: self selectedClass]
	