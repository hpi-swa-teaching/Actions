as yet unclassified
globalActions

	<wantsActions>

	^{   
		{'Move up' . #moveUp}.
	}collect: [:each | AGlobalAction from: each in: self]
	