test shortcut triggering
testShortcutTriggeringCorrectly
	
	self wasShortcutTriggered: false.
	
	ATestAActions addShortcut: self shortcutCtrld for: (self shortcutTriggeringAction) in: AActionsTests.
	ATestAActions shortcutFor: self event: self shortcutCtrld.
	
	self assert: self wasShortcutTriggered
