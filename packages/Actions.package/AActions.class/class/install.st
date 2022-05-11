initialize-release
install
	Menus := Menus ifNil: [Dictionary new].
	Shortcuts := Shortcuts ifNil: [Dictionary new].
	
	(AreDefaultShortcutsAlreadyActive isNil or: [AreDefaultShortcutsAlreadyActive not]) ifTrue: [
		self activateDefaultShortcuts.
		AreDefaultShortcutsAlreadyActive := true.
	].