as yet unclassified
collectActions

	| method value class |
	self classIndex = 0
		ifTrue: [^ {}].
	method :=  (AActions actionPragmas at: self classIndex) method.
	class := method methodHome theNonMetaClass.
	value := method valueWithReceiver: class arguments: {}.
	^ (value isCollection
		ifTrue: [(value select: [:each | self canDisplay: each])]
		ifFalse: [(self canDisplay: value) ifTrue: [{value}]]).