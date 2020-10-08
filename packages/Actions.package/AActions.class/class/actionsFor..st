accessing
actionsFor: aClass

	| methods actions |
	methods := (self actionPragmasFor: aClass) collect: [:each | each method].
	actions := OrderedCollection new.
	methods do: [:each | | result |
		result := each valueWithReceiver: aClass arguments: {}.
		result isCollection
			ifTrue: [(result do: [:ea | (self testIfIsAction: ea) ifTrue: [actions add: ea]])]
			ifFalse: [(self testIfIsAction: result) ifTrue: [actions add: result]]
		].
	actions do: [:each | each clazz: aClass].
	^ actions