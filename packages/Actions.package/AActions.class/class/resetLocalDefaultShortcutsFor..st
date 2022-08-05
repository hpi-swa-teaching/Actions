default shortcuts
resetLocalDefaultShortcutsFor: aClass
	
	self removeLocalShortcutsFor: aClass.
	self activateLocalDefaultShortcutsFor: aClass.