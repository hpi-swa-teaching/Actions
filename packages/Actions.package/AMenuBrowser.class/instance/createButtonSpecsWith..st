toolbuilder
createButtonSpecsWith: aToolBuilder

	^ {
		{'add' . #openAddMenu . nil} . 
		{'remove' . #removeItem . #canRemove} . 
		{'moveUp' . nil . #canMoveUp} . 
		{'moveDown' . nil . #canMoveDown}} 
		collect: [:each | 
			self 
				createButtonSpecWith: aToolBuilder 
				named: each first
				action: each second
				enabled: each third]