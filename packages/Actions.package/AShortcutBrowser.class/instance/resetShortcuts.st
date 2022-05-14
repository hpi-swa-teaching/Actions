reset shortcuts
resetShortcuts
	
	| isResetConfirmed |
	isResetConfirmed := (PopUpMenu confirm: 'Danger: Do you want to reset all shortcuts?').
	isResetConfirmed ifTrue: 
		[AActions resetDefaultShortcuts].