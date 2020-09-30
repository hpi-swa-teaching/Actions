action description helper
saveActionsFrom: aCollection

	(aCollection 
		collect: [:each | AAction from: each])
		do: [:each | self save: each]