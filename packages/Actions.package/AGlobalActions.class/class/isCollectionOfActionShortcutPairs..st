handle actions
isCollectionOfActionShortcutPairs: aValue

	^ aValue isCollection 
			and: [aValue isString not] 
			and: [(aValue collect: [:each | each isCollection and: [each size = 2] 
					and: [AActions testIfIsAction: each first]]) allSatisfy: [:each | each]]