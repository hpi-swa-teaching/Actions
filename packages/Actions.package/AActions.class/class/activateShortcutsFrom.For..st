default shortcuts
activateShortcutsFrom: methods For: aClass
		
			methods do: [ :method |
				| actions |
				actions := method valueWithReceiver: aClass arguments: {}.
				actions isDictionary ifTrue: [
					actions keysAndValuesDo: [ :action :shortcut |
						action clazz: aClass.			
						(self testIfIsAction: action) ifTrue: [self addShortcut: shortcut for: action in: aClass].
					].
				].
			].