default shortcuts
activateDefaultShortcutsFor: aClass

	(self defaultActionShortcutPairsFor: aClass) do: 
		[:pair | self addShortcut: pair first for: pair second in: aClass]	