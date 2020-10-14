as yet unclassified
make: aCollection

	aCollection do: [:each | | collection |
		collection := each.
		(each isKindOf: Association)
			ifTrue: [collection := each value].
		
		AAction from: collection.
	]