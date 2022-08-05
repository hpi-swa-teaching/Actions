actions
globalActions

	<wantsTestGlobalActions>

	^{   
		{'Remove'}.
	}collect: [:each | AGlobalAction from: each in: self]