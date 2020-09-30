accessing
actionsFor: aClass

	| method result actions |
	method := (self actionPragmas 
		detect: [:each | each methodClass theNonMetaClass = aClass ]
		ifNone: [^ {}]) method.
	result := method valueWithReceiver: aClass arguments: {}.
	actions := (result isCollection
		ifTrue: [(result select: [:each | self testIfIsAction: each])]
		ifFalse: [(self testIfIsAction: result) ifTrue: [{result}]]) ifNil: [{}].
	actions do: [:each | each clazz: aClass].
	^ actions