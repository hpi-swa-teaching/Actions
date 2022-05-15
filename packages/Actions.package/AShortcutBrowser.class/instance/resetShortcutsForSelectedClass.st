reset shortcuts
resetShortcutsForSelectedClass
	
	| isResetConfirmed |
	Transcript show: self selectedClass.
	isResetConfirmed := (PopUpMenu confirm: 'Do you want to reset ', self selectedClass, ' shortcuts?').
	isResetConfirmed ifTrue: 
		[AActions resetDefaultShortcutsFor: self selectedClass].
