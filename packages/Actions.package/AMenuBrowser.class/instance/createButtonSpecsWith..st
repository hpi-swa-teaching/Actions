toolbuilder
createButtonSpecsWith: aToolBuilder

	^ {
		{'add' . #openAddMenu . nil} . 
		{'remove' . #removeItem . #canRemove} . 
		{'moveUp' . #moveUp . #canMoveUp} . 
		{'moveDown' . #moveDown . #canMoveDown}} 
		collect: [:each | 
			self 
				createButtonSpecWith: aToolBuilder 
				named: each first
				action: each second
				enabled: each third]