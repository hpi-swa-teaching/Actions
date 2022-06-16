as yet unclassified
defaultActions
	
	|action1 shortcut1 actions |
	
	<wantsActions>
	
	actions := Dictionary new
		at: #leftSideClassList put: #browseActionsForSelectedClass;
		at: #rightSideMainList put: #browseSelectedAction;
		yourself.
		
	shortcut1 := KeyboardEvent new 
		setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: 98 hand: nil stamp: nil;
		yourself.
	
	action1 := AAction title: 'Browse actions' action: actions description: 'Open the methods where actions are defined'.

	
	^ Dictionary new
			at: action1 put: shortcut1;
			yourself