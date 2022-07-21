default shortcuts
removeGlobalShortcutsFor: aClass

	(Shortcuts at: aClass) keysDo: [:shortcut |((Shortcuts at: aClass) at: shortcut) isGlobal ifTrue: [self removeShortcut: shortcut in: aClass]]