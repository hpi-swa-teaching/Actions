as yet unclassified
actions 

	<wantsDuplicateTestActions>
	^ { 
		(self mockActionMoveUpAsList) .
		(self mockActionMoveUpAsList) .
	} collect: [:each | AAction createActionShortcutPair: each]