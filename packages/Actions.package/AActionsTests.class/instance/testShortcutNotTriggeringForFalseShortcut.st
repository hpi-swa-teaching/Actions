test shortcut triggering
testShortcutNotTriggeringForFalseShortcut
	
	self wasShortcutTriggered: false.
	
	ATestAActions addShortcut: self shortcutCtrld for: (self shortcutTriggeringAction) in: AActionsTests.
	ATestAActions shortcutFor: self event: self shortcutCtrlb.
	
	self assert: self wasShortcutTriggered equals: false
