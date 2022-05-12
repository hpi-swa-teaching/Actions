accessing
actionsFor: aClass

	| methods actions |
	methods := (self actionPragmasFor: aClass) collect: [:each | each method].
	actions := OrderedCollection new.
	methods do: [:each | | result |
		result := each valueWithReceiver: aClass arguments: {}.
		result isDictionary
			ifTrue: [result keys do: [:ea | self add: ea IfAnActionTo: actions]]
			ifFalse: [
			result isCollection
				ifTrue: [(result do: [:ea | self add: ea IfAnActionTo: actions])]
				ifFalse: [self add: result IfAnActionTo: actions]
			].
		].
	actions do: [:each | each clazz: aClass].
	^ actions