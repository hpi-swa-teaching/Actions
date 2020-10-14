handle menus
fillMenu: aMenu for: anObject

	| classes |
	classes := anObject class withAllSuperclasses.
	classes do: [:each | (Menus at: each ifAbsent: [ATreeNode new]) fill: aMenu for: anObject].
	^ aMenu