evaluating
for: anObject at: aPosition

	self action isDictionary 
		ifTrue: [self executeSubsetActionInWorldFor: anObject at: aPosition]
		ifFalse: [self for: anObject]
	