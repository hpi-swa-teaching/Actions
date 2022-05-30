as yet unclassified
checkForDuplicatesFor: aClass

	| duplicateAction |
	
	duplicateAction := AActions checkIfDuplicatesExistsFor: aClass.
	duplicateAction ifNotNil: [self actionDuplicateWarning: duplicateAction]
	
	