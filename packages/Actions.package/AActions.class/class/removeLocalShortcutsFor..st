default shortcuts
removeLocalShortcutsFor: aClass

	(Shortcuts at: aClass) keysDo: [:shortcut |((Shortcuts at: aClass) at: shortcut) isGlobal ifFalse: [self removeShortcut: shortcut in: aClass]]