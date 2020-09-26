handle menus
menuFor: aClass

	^ Menus at: aClass ifAbsent: [ATreeNode new]