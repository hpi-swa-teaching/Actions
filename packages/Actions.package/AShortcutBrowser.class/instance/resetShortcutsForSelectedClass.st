reset shortcuts
resetShortcutsForSelectedClass
	
	| isResetConfirmed |
	Transcript show: self selectedClass.
	isResetConfirmed := (PopUpMenu confirm: 'Do you want to reset ', self selectedClass, ' shortcuts to default?').
	isResetConfirmed ifTrue: 
		[AActions resetDefaultShortcutsFor: self selectedClass].
