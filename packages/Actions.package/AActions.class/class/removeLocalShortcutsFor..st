default shortcuts
removeLocalShortcutsFor: aClass

	(Shortcuts at: aClass) keys do: [:shortcut |((Shortcuts at: aClass) at: shortcut) isGlobal ifFalse: 		[self removeShortcut: shortcut in: aClass]]