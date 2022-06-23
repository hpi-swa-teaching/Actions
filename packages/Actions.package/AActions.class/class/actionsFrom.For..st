accessing
actionsFrom: aCompiledMethod For: aClass

| methodResult actions|

actions := OrderedCollection new.
methodResult := aCompiledMethod valueWithReceiver: aClass arguments: {}.
methodResult isDictionary
	ifTrue: [methodResult keys do: [:ea | self add: ea IfAnActionTo: actions]]
	ifFalse: [
	methodResult isCollection
		ifTrue: [(methodResult do: [:ea |self add: ea first IfAnActionTo: actions])] 
		ifFalse: [self add: methodResult IfAnActionTo: actions]
	].
^ actions