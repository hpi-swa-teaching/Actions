as yet unclassified
is: aCollectionA subsetOf: aCollectionB

	^ (aCollectionA collect: [ :each | aCollectionB anySatisfy: [ :eachB | eachB = each ]])
				allSatisfy: [ :each | each ]