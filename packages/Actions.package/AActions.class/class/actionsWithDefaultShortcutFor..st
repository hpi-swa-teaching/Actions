accessing
actionsWithDefaultShortcutFor: aClass

	^ (self actionsFor: aClass)
			select: [:action | action hasDefaultShortcut]
			
	