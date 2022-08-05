global actions
globalActions

	^{  
		{'Remove' . #remove . 'Removes the currently selected item'. $r . #cmdPressed}.
	}collect: [:each | AGlobalAction createActions: each]
	