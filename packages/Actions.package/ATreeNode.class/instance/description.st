evaluating
description

	^ self isSeperator
		ifTrue: [nil]
		ifFalse: [self value description]