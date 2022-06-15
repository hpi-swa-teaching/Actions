evaluating
for: anObject at: aPosition
	
	self action isDictionary 
		ifTrue: [self executeSubsetActionIn: World for: anObject at: aPosition]
		ifFalse: [self for: anObject]
	