actions
globalActions

	<wantsActions>

	^{   
		{'Remove' . #removeItem}.
	}collect: [:each | AGlobalAction from: each in: self]
	