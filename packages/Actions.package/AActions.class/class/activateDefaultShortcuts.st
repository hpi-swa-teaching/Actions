handle shortcuts
activateDefaultShortcuts

	self actionPragmas keysAndValuesDo: [:class :methods |
		methods do: [ :method |
			| actions |
			
			actions := method valueWithReceiver: class arguments: {}.
			actions isDictionary ifTrue: [
				actions keysAndValuesDo: [ :action :shortcut |
					action clazz: class.			
					(self testIfIsAction: action) ifTrue: [self addShortcut: shortcut for: action in: class].
				].
			].
		].
	].