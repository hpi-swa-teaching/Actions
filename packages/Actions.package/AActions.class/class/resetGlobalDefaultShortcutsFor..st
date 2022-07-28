default shortcuts
resetGlobalDefaultShortcutsFor: aClass
	
	self removeGlobalShortcutsFor: aClass.
	self halt.
	self activateGlobalDefaultShortcutsFor: aClass.