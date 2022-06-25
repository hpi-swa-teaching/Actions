as yet unclassified
actions 

	<wantsDuplicateTestActions>
	^ { 
		self mockActionMoveUpAsList.
	} collect: [:each | AAction createActionShortcutPair: each]