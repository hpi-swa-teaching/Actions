as yet unclassified
actions 

	<wantsTestActions>
	^ { 
		self mockActionMoveUpAsList.
	} collect: [:each | AAction from: each]