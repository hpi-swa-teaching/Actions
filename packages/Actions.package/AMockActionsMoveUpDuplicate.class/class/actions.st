actions
actions 

	<wantsDuplicateTestActions>
	^ { 
		(self mockActionMoveUpAsList) .
		(self mockActionMoveUpAsList) .
	} collect: [:each | AAction createActions: each]