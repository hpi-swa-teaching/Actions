default shortcuts
activateDefaultShortcuts

	self classesWithActions do: [:class | self activateDefaultShortcutsFor: class]