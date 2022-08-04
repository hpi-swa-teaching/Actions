as yet unclassified
actions

	<wantsActions>

	^{   
		{'Move Down' . #moveDown . 'Moves the currently selected items under the item under it'}.
		{'Add line' . #addSeparator . 'Adds a seperator/line'. $a . #cmdPressed}.
		{'Move up' . #moveUp . 'Moves the currently selected items over the item over it'}.
		{'Add...' . #addAction . 'Opens a dialog to select actions to be added to the list'}
	}collect: [:each | AAction createActions: each]
	