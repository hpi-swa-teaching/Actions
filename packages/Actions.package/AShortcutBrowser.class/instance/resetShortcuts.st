reset shortcuts
resetShortcuts
	
	| isResetConfirmed |
	isResetConfirmed := (PopUpMenu confirm: 'Danger: Do you want to reset all shortcuts to default?').
	isResetConfirmed ifTrue: 

		[self aactionsApi resetDefaultShortcuts.
     self changed: #mainView. 
    ].
