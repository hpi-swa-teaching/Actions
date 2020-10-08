accessing
classesWithActions

	^ (self allActionPragmas collect: [:each | each methodClass theNonMetaClass])
		asSet 
		asSortedCollection: [:a :b | a name <= b name]