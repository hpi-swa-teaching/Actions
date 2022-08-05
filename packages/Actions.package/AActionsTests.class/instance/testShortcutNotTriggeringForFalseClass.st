test shortcut triggering
testShortcutNotTriggeringForFalseClass
	
	self wasShortcutTriggered: false.
	
	ATestAActions addShortcut: self shortcutCtrld for: (self shortcutTriggeringAction) in: AShortcutTests.
	ATestAActions shortcutFor: self event: self shortcutCtrld.
	
	self assert: self wasShortcutTriggered equals: false
