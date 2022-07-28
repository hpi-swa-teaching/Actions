default shortcuts
activateGlobalDefaultShortcutsFor: aClass

	((self actionsWithDefaultShortcutFor: aClass) 
		select: [:action | action isGlobal])
		do: [:globalAction | self addShortcut: globalAction defaultShortcut for: globalAction in: aClass]

	