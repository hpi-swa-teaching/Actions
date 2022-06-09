as yet unclassified
createActionShortcutPair: aCollection in: anotherCollection
	|shortcut|

	shortcut := nil.
	(aCollection size = 5)
		ifTrue:[
			(aCollection fourth isCharacter and: aCollection fifth isSymbol)
		 		ifTrue:[ shortcut := (self createShortcutwithKeyValue: aCollection fourth andSymbol: aCollection fifth) ]
				ifFalse:[^self error: 'You tried to create the default Action ', (aCollection first) asString , ' but did not meet the requirements for the API. Please check your #actions'].].
		
	Transcript show: shortcut.
	^anotherCollection add: {(self from: aCollection). shortcut};
	yourself.
	
