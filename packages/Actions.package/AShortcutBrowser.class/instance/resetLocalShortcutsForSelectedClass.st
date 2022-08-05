reset shortcuts
resetLocalShortcutsForSelectedClass
	
	| isResetConfirmed |

	isResetConfirmed := (PopUpMenu confirm: 'Do you want to reset ', self selectedClass, ' shortcuts for local Actions to default?').
	isResetConfirmed ifTrue: 
		[self aactionsApi resetLocalDefaultShortcutsFor: self selectedClass.
			self changed: #mainView.]