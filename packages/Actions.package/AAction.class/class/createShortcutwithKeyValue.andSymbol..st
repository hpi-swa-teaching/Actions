as yet unclassified
createShortcutwithKeyValue: keyVal andSymbol:  symbol
	|shortcut buttonNumber|

		(symbol = #cmdPressed) ifTrue:[buttonNumber := 64.].
		(keyVal isUppercase) ifTrue: [buttonNumber := 72.].
		^ shortcut := KeyboardEvent new 
					setType: #keystroke buttons: buttonNumber position: 0 @ 0 keyValue: keyVal asciiValue hand: nil stamp:keyVal