helpers
is: aCollectionA equalTo: aCollectionB
	
	^ (self is: aCollectionA subsetOf: aCollectionB)
				and: (self is: aCollectionB subsetOf: aCollectionA)
				and: (aCollectionA size = aCollectionB size)
