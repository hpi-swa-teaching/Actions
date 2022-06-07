as yet unclassified
actionsDuplicate

	<wantsDuplicateTestActions>
	^ { 
		self mockActionMoveUpAsList.
	} collect: [:each | AAction from: each]