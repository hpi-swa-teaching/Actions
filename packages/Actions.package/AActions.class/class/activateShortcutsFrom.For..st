default shortcuts
activateShortcutsFrom: methods For: aClass
		|actions action shortcut|
		
			methods do: [ :method |
				actions := method valueWithReceiver: aClass arguments: {}.
					Transcript show: actions.
				((actions isDictionary not) and: actions isCollection) ifTrue: [
					actions collect: [ :each |
						Transcript show: each isCollection.
						Transcript show: each.
						action := each first.
						Transcript show: action.
						shortcut := each second.
						Transcript show:shortcut.
						action clazz: aClass.			
						((self testIfIsAction: action) and: shortcut notNil) ifTrue: [self addShortcut: shortcut for: action in: aClass].
					].
				].
			].