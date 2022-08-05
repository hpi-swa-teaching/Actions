shortcuts
testAddShortcut

	(self shortcutBrowser) addShortcut: self shortcutCtrld.
	self assert: ((ATestAActions shortcutsFor: (self shortcutBrowser selectedAction) in: (self shortcutBrowser selectedClass) ifAbsent: [^false] ) first) equals: self shortcutCtrld