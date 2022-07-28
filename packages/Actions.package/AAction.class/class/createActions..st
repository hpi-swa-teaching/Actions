as yet unclassified
createActions: aCollection 

	|shortcut apiCallLength|

	apiCallLength := 5.
	shortcut := nil.
	(aCollection size = apiCallLength)
		ifTrue:[
			(aCollection fourth isCharacter and: aCollection fifth isSymbol)
		 		ifTrue:[ shortcut := (self createShortcutwithKeyValue: aCollection fourth andSymbol: aCollection fifth) ]
				ifFalse:[^self error: 'You tried to create the default Action ', (aCollection first) asString , ' but did not meet the requirements for the API. Please check your #actions'].].
		
	^ (self from: aCollection)
			defaultShortcut: shortcut;
			yourself
	