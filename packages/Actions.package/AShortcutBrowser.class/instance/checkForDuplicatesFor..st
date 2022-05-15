as yet unclassified
checkForDuplicatesFor: aClass

	| duplicateActionTitle |
	
	duplicateActionTitle := AActions checkIfDuplicatesExistsFor: aClass.
	duplicateActionTitle ifNotNil: [self actionDuplicateWarning: duplicateActionTitle]
	
	