as yet unclassified
actions 

	<wantsActions>
	^ { 
		self mockActionMoveUpAsList.
	} collect: [:each | AAction from: each]