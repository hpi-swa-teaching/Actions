handle menus
fillMenu: aMenu for: anObject

	(Menus at: anObject class ifAbsent: [ATreeNode new]) fill: aMenu for: anObject.
	^ aMenu