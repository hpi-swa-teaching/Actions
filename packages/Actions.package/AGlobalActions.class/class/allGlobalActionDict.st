handle actions
allGlobalActionDict
	
	| actionDict |
	actionDict := Dictionary new.
	
	((self allRelevantMethods collect: [:method | AActions valueFrom: method])
		select: [:value | self isCollectionOfActionShortcutPairs: value])
		do: [:actionsList | actionsList do: [: action | actionDict at: action title put: action].].
		
	^ actionDict