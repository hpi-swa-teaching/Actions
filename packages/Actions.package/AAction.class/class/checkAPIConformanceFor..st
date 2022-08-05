create
checkAPIConformanceFor: aCollection

	(aCollection fourth isCharacter and: aCollection fifth isSymbol)
		ifTrue:[^self createShortcutwithKeyValue: aCollection fourth andSymbol: aCollection fifth]
		ifFalse:[^self error: 'You tried to create the default Action ', (aCollection first) asString
				 , ' but did not meet the requirements for the API. Please check your #actions']