reset shortcuts
resetGlobalShortcutsForSelectedClass
	
	| isResetConfirmed |

	isResetConfirmed := (PopUpMenu confirm: 'Do you want to reset ', self selectedClass, ' shortcuts for global Actions to default?').
	isResetConfirmed ifTrue: 
		[self aactionsApi resetGlobalDefaultShortcutsFor: self selectedClass.
			self changed: #mainView.]