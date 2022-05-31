as yet unclassified
actions 

	<wantsActions>
	^ { 
		(self mockActionMoveUpAsList) .
		(self mockActionMoveUpAsList) .
	} collect: [:each | AAction from: each]