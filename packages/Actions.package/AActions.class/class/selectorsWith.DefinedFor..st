handle selectors
selectorsWith: aAction DefinedFor: aClass
	
	| releveantSelectors |
	
	releveantSelectors := OrderedCollection new.
	
	(self actionPragmasFor: aClass) do: [ :compiledMethod | 
		(self actionsFrom: compiledMethod For: aClass) do: [ :action |
			(action title = aAction title) 
				ifTrue: [ releveantSelectors addIfNotPresent: compiledMethod selector ].
		].
	].

	^ releveantSelectors
	