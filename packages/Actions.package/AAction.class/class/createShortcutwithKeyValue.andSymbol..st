as yet unclassified
createShortcutwithKeyValue: keyVal andSymbol:  symbol
	|shortcut buttonNumber cmdButtonNumber shiftCmdButtonNumber|
		cmdButtonNumber := 64.
		shiftCmdButtonNumber := 72.
		
		(symbol = #cmdPressed) ifTrue:[buttonNumber := cmdButtonNumber.].
		(keyVal isUppercase) ifTrue: [buttonNumber := shiftCmdButtonNumber.].
		^ shortcut := KeyboardEvent new 
					setType: #keystroke buttons: buttonNumber position: 0 @ 0 keyValue: keyVal asciiValue hand: nil stamp:keyVal