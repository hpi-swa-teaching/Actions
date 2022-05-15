default shortcuts
resetDefaultShortcutsFor: aClass
	
	self removeShortcutsFor: aClass.
	self activateDefaultShortcutsFor: aClass.