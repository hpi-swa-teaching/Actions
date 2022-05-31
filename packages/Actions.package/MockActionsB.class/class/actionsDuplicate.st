as yet unclassified
actionsDuplicate

	<wantsActions>
	^ { 
		self mockActionMoveUpAsList.
	} collect: [:each | AAction from: each]