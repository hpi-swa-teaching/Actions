as yet unclassified
createActionShortcutPair: aCollection in: aDictionary
	|shortcut buttonNumber keyValue|
	
	"checks char, symbol check"
			
	shortcut := nil.
	buttonNumber := nil.
	(aCollection size = 5)
		 ifTrue:[
			(aCollection fourth isCharacter and: aCollection fifth isSymbol)
			ifTrue:[
				keyValue := aCollection fourth asciiValue.
				(aCollection fifth = #cmdPressed) ifTrue:[buttonNumber := 64.].
				shortcut := KeyboardEvent new 
							setType: #keystroke buttons: buttonNumber position: 0 @ 0 keyValue: keyValue hand: nil stamp: nil; yourself.]
			ifFalse:[^self error: 'You tried to create the default Action ', (aCollection first) asString , ' but did not meet the requirements for the API. Please check your #actions'].].
		
	
	^aDictionary at: (self from: aCollection) put: shortcut;
	yourself.
	
