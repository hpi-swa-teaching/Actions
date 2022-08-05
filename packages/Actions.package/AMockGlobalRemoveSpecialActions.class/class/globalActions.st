actions
globalActions

	<wantsTestGlobalActions>

	^{   
		{'Remove' . #removeSpecial}.
	}collect: [:each | AGlobalAction from: each in: self]