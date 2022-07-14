default shortcuts
removeShortcutsFor: aClass

	(Shortcuts at: aClass) keysDo: [:shortcut | self removeShortcut: shortcut in: aClass]