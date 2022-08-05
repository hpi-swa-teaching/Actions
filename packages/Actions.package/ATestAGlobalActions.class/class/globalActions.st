global actions
globalActions

	^{  
		{'Remove' . #removeDefault . 'Removes the currently selected item'. $r . #cmdPressed}.
	}collect: [:each | ATestAGlobalAction createActions: each]
	