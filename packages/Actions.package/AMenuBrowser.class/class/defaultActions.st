as yet unclassified
defaultActions
	|action1 action2 shortcut1 shortcut2 |
	
	<wantsActions>
	shortcut1 := KeyboardEvent new 
		setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: 100 hand: nil stamp: nil;
		yourself.
	
	shortcut2 := KeyboardEvent new
		setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: 97 hand: nil stamp: nil;
		yourself.
	
	action1 := AAction title: 'Remove' action: #removeItem description: 'Removes the currently selected item'.
	action2 := AAction title: 'Add...' action: #addAction description: 'Opens a dialog to select actions to be added to the list'.
	
	^ Dictionary new
			at: action1 put: shortcut1;
			at: action2 put: shortcut2;
			yourself.