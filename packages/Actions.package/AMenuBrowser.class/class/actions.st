as yet unclassified
actions

	<wantsActions>

	^{   
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' }.
		{'Move Down' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Add line' . #addSeparator . 'Adds a seperator/line'. $a . #cmdPressed}.
		{'Remove' . #removeItem . 'Removes the currently selected item'. $r . #cmdPressed}.
		{'Add...' . #addAction . 'Opens a dialog to select actions to be added to the list'. $c . #cmdPressed}.
	}collect: [:each | AAction createActionShortcutPair: each]
	