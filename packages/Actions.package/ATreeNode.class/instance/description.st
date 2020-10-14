as yet unclassified
description

	^ self isSeperator
		ifTrue: [nil]
		ifFalse: [self value description]