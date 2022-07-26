as yet unclassified
globalActions

	^{   
		self action1 .
		self action2 
	}collect: [:each | AGlobalAction createActions: each]
	