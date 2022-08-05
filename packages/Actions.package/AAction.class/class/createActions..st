create
createActions: aCollection 

	| shortcut |
	
	shortcut := nil.
	(aCollection size = self apiCallLength)
		ifTrue: [shortcut := self checkAPIConformanceFor: aCollection].	
			
	^ (self from: aCollection) defaultShortcut: shortcut;
			yourself
	