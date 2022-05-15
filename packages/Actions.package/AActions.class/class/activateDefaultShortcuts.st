default shortcuts
activateDefaultShortcuts

	self actionPragmas keysAndValuesDo: [:class :methods |
		self activateShortcutsFrom: methods For: class.
	].