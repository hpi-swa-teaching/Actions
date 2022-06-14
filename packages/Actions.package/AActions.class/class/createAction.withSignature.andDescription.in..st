accessing
createAction: aName withSignature: aSignature andDescription: aDescription in: aClass

	
	(aName isString and: aName size > 0 and: aSignature isSymbol and: aDescription isString ) 
		ifTrue:[^AAction title: aName action: aSignature description: aDescription]
		ifFalse:[^self error: 'You tried to create the Action ', aName asString , ' in ' , aClass asString,' but did not meet the requirements for the API.'].
	