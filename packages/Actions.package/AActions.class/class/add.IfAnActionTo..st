handle shortcuts
add: anObject IfAnActionTo: aCollection
	(self testIfIsAction: anObject) ifTrue: [aCollection add: anObject]