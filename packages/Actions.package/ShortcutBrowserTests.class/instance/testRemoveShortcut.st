buttons
testRemoveShortcut

	(self shortcutBrowser) addShortcut: self shortcutCtrld.
	(self shortcutBrowser) removeShortcut: self shortcutCtrld.
	self assert: ((ATestAActions shortcutsFor: (self shortcutBrowser selectedAction) in: (self shortcutBrowser selectedClass) ifAbsent: [^false] ) first) equals: false