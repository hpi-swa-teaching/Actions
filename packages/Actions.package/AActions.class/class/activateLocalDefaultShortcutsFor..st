default shortcuts
activateLocalDefaultShortcutsFor: aClass

	(self defaultActionShortcutPairsFor: aClass) do: 
		[:pair | pair first isGlobal ifFalse: [self addShortcut: pair second for: pair first  in: aClass]]
	