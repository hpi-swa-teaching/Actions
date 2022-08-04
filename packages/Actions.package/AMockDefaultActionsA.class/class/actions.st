actions
actions 

	<wantsActionsWithDefaultShortcuts>
	^ { 
		self mockActionAddLineAsList
	} collect: [:each | AAction createActions: each]