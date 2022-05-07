toolbuilder
createButtonSpecsWith: aToolBuilder

	^ {
		{'help' . #openHelpMenu . nil} .} 
		collect: [:each | 
			self 
				createButtonSpecWith: aToolBuilder 
				named: each first
				action: each second
				enabled: each third]