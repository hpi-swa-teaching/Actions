browsing
browseSelectedAction
	
	self selectedClass ifNotNil: [self browse: self selectedAction For: self selectedClass]
	