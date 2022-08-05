actions
actions 

	<wantsTestDefaultActions>
	^ { 
		self mockActionAddLineAsList.
	} collect: [:each | AAction createActions: each]