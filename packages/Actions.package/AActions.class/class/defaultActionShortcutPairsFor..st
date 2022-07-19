default shortcuts
defaultActionShortcutPairsFor: aClass
	
	| actionPairs |
	
	actionPairs := OrderedCollection new.
	
	((aClass class methodDict values
		select: [:method | self recognizes: method])
		do: [:method | ((method valueWithReceiver: aClass arguments: {})
			select: [:pair | pair second isNil not])
			do: [:pair | pair first clazz: aClass. actionPairs add: pair] ]).
		
	^ actionPairs

	