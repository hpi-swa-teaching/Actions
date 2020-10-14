converting
asString

	^ self isSeperator
		ifTrue: [self value]
		ifFalse: [self value title]