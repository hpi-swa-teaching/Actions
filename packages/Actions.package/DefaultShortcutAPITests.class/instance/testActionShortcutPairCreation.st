as yet unclassified
testActionShortcutPairCreation
	|exampleAPICall expectedShortcuts resultRecipient createdShortcut expectedShortcut|
	exampleAPICall := {
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' . $a . #cmdPressed}.
		{'Add line' . #addSeparator . 'Adds a seperator/line'. $A . #cmdPressed}.
		{'Move up' . #moveDown . 'Moves the currently selected items under the items under it' }.
	}.
	
	expectedShortcuts := {
	 	KeyboardEvent new setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: $a asciiValue hand: nil stamp: $a.
		KeyboardEvent new setType: #keystroke buttons: 72 position: 0 @ 0 keyValue: $A asciiValue hand: nil stamp: $A.
		nil.
	}.
	
	resultRecipient := OrderedCollection new.
	exampleAPICall do: [:each | AAction createActionShortcutPair: each in: resultRecipient.].
	
	1 to: exampleAPICall size do: [ :i |
		createdShortcut := (resultRecipient at: i) second.
		expectedShortcut := expectedShortcuts at: i.
		self assert: createdShortcut = expectedShortcut.].
		