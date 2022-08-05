default shortcuts
removeGlobalShortcutsFor: aClass

	(Shortcuts at: aClass ifAbsent: [Dictionary new]) keys do: [:shortcut |((Shortcuts at: aClass) at: shortcut) isGlobal ifTrue: 
		[self removeShortcut: shortcut in: aClass]]