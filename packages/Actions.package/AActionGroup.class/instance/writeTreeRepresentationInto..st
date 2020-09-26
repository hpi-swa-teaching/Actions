as yet unclassified
writeTreeRepresentationInto: aDictionary

	| children |
	children := Dictionary new.
	aDictionary 
		at: self title 
		put: children.
		
	self actions collect: [:each | each writeTreeRepresentationInto: children]