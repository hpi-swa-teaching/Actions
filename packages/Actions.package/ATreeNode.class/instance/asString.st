converting
asString

	^ self isSeperator
		ifTrue: [self value]
		ifFalse: ['Hello world']