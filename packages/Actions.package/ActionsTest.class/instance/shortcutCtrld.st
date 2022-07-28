helpers
shortcutCtrld

	^ KeyboardEvent new 
		setType: #keystroke buttons: 64 position: 0 @ 0 keyValue: 100 hand: nil stamp: nil;
		yourself.