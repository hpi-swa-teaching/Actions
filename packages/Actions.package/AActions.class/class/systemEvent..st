system event handling
systemEvent: aSystemEvent

	aSystemEvent itemKind = SystemChangeNotifier classKind
		ifTrue: [self reactToClassEvent: aSystemEvent].
		
	aSystemEvent itemKind = SystemChangeNotifier methodKind 
		ifTrue: [self reactToMethodEvent: aSystemEvent]