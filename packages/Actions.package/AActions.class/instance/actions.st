accessing
actions

	| method value class |
	self classIndex = 0
		ifTrue: [^ {}].
	method :=  (self class actionPragmas at: self classIndex) method.
	class := method methodHome theNonMetaClass.
	value := method valueWithReceiver: class arguments: {}.
	^ (value isCollection
		ifTrue: [(value select: [:each | self wantsToList: each])]
		ifFalse: [(self wantsToList: value) ifTrue: [{value}]])
			