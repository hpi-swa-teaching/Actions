reset shortcuts
resetShortcutsForSelectedClass
	
	| isResetConfirmed |
	isResetConfirmed := (PopUpMenu confirm: 'Do you want to reset ', self selectedClass, ' shortcuts?').
	isResetConfirmed ifTrue: 
		[self aactionsApi resetDefaultShortcutsFor: self selectedClass].
