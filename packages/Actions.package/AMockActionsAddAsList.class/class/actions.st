actions
actions 

	<wantsDuplicateTestActions>
	^ { 
		self mockActionAddAsList.
	} collect: [:each | AAction createActions: each]