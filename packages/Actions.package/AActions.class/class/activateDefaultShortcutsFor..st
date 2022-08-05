default shortcuts
activateDefaultShortcutsFor: aClass

	(self actionsWithDefaultShortcutFor: aClass) do: 
		[:action | self addShortcut: action defaultShortcut for: action in: aClass]	