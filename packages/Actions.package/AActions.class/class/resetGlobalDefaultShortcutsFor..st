default shortcuts
resetGlobalDefaultShortcutsFor: aClass
	
	self removeGlobalShortcutsFor: aClass.
	self activateGlobalDefaultShortcutsFor: aClass.