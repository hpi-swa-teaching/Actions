default shortcuts
activateGlobalDefaultShortcutsFor: aClass

	(self defaultActionShortcutPairsFor: aClass) do: 
		[:pair | pair first isGlobal ifTrue: [self addShortcut: pair second for: pair first in: aClass]]
	