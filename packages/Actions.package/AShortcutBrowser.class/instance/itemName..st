accessing
itemName: anInteger

	| class |
	
	class := (self classes at: anInteger).
	(self renamedClasses at: class name ifAbsent: nil) ifNotNil: [^class name].
	^'nothing new to find here...'