as yet unclassified
checkIfDuplicatesExistsFor: aClass

	| collection |
	
	collection := SortedCollection sortBlock: [:a :b |  (a title = b title) ifTrue: [^ a ]. a title <= b title].
	(self actionsFor: aClass) do: [:each | each writeListRepresentationOn: collection].
	
	^ nil