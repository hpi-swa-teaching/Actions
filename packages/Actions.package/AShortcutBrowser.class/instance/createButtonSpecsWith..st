toolbuilder
createButtonSpecsWith: aToolBuilder

	^ {
		{'Help' . #openHelpMenu . nil} .
		{'Reset locals' . #resetLocalShortcutsForSelectedClass . nil} .
		{'Reset globals' . #resetGlobalShortcutsForSelectedClass . nil}.
		{'Reset all' . #resetShortcuts . nil}} 
		collect: [:each | 
			self 
				createButtonSpecWith: aToolBuilder 
				named: each first
				action: each second
				enabled: each third]