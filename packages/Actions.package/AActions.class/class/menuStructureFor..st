handle menus
menuStructureFor: aClass

	^ Menus at: aClass ifAbsent: [ATreeNode new]