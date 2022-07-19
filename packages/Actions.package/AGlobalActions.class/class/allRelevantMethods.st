handle actions
allRelevantMethods
	
	^ self class methodDict values select: [:method | self isMethodRelevant: method]
			