handle shortcuts
checkForDuplicatesFor: aClass

	| duplicateAction |
	
	duplicateAction := self aactionsApi checkIfDuplicatesExistsFor: aClass.
	duplicateAction ifNotNil: [self actionDuplicateWarning: duplicateAction]
	
	