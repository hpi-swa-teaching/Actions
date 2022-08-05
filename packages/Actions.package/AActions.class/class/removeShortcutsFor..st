default shortcuts
removeShortcutsFor: aClass

	(Shortcuts at: aClass ifAbsent: [Dictionary new]) keysDo: [:shortcut | self removeShortcut: shortcut in: aClass]