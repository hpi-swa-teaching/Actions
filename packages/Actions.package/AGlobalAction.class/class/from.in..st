as yet unclassified
from: aCollection in: aClass
|aGlobalActionShortcutPair aGlobalAction aShortcut|

	aGlobalActionShortcutPair := AGlobalActions from: aCollection first.
	aGlobalAction := aGlobalActionShortcutPair first.
	aShortcut := aGlobalActionShortcutPair second.
	
	aGlobalAction clazz: aClass.
	(aCollection size = 2)
		ifTrue:[ aGlobalAction action: aCollection second].
		
	^aGlobalActionShortcutPair