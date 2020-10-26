accessing
classesWithActions

	^ (self allActionMethods collect: [:each | each methodClass theNonMetaClass])
		asSet 
		asSortedCollection: [:a :b | a name <= b name]