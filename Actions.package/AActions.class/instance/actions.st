accessing
actions

	| method value |
	self classIndex = 0
		ifTrue: [^ {}].
	method :=  (self class actionPragmas at: self classIndex) method.
	value := method valueWithReceiver: method methodHome arguments: {}.
	^ (value isCollection
		ifTrue: [(value select: [:each | self wantsToList: each])
					collect: [:each | each listRepresentation]]
		ifFalse: [(self wantsToList: value) ifTrue: [value listRepresentation]])
			