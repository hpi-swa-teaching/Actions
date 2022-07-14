as yet unclassified
allGlobalActionDict
	
	| actionDict |
	actionDict := Dictionary new.
	
	self allGlobalActionMethods do: [:method |
		(self actionShortcutPairsFrom: method For: self) do: [:actionShortcutPair |
			actionDict at: actionShortcutPair first title put: actionShortcutPair]].
	
	^ actionDict