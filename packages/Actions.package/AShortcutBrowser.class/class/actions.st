as yet unclassified
actions
	|action1 shortcut1  |
	
	<wantsActions>
	shortcut1 := KeyboardEvent new 
		setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: 98 hand: nil stamp: nil;
		yourself.
	
	action1 := AAction title: 'Browse actions' action: #browseActionsForSelectedClass description: 'Open the methods where actions are defined'.

	
	^ Dictionary new
			at: action1 put: shortcut1;
			yourself