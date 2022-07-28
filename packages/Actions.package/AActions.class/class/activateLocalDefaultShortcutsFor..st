default shortcuts
activateLocalDefaultShortcutsFor: aClass

	((self actionsWithDefaultShortcutFor: aClass) 
		select: [:action | action isGlobal not])
		do: [:action | self addShortcut: action defaultShortcut for: action in: aClass]
	