default shortcuts
activateShortcutsFrom: methods For: aClass
		|actions action shortcut|
		
			methods do: [ :method |
				actions := method valueWithReceiver: aClass arguments: {}.
				((actions isDictionary not) and: actions isCollection) ifTrue: [
					actions collect: [ :each |		
						action := each first.
						shortcut := each second.
						action clazz: aClass.			
						((self testIfIsAction: action) and: shortcut notNil) ifTrue: [self addShortcut: shortcut for: action in: aClass].
					].
				].
			].