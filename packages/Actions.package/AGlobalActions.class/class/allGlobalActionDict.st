handle actions
allGlobalActionDict
	
	| actionDict |
	actionDict := Dictionary new.
	
	((self allRelevantMethods collect: [:method | AActions valueFrom: method])
		select: [:value | self isCollectionOfActionShortcutPairs: value])
		do: [:actionPairList | actionPairList do: [: actionPair| actionDict at: actionPair first title put: actionPair first].].
		
	^ actionDict.