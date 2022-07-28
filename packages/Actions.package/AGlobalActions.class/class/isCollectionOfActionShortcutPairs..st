handle actions
isCollectionOfActionShortcutPairs: aValue

	^ aValue isCollection 
			and: [aValue isString not] 
			and: [aValue allSatisfy: [:each | AActions testIfIsAction: each]]