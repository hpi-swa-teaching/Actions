as yet unclassified
actions 

	<wantsDuplicateTestActions>
	^ { 
		self mockActionAddAsList.
	} collect: [:each | AAction createActions: each]