as yet unclassified
actions
	|collection|
	<wantsActions>
	collection:= OrderedCollection new.
	{   
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' . $a . #cmdPressed}.
		{'Move down' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Add line' . #addSeparator . 'Adds a seperator/line'. $c . #cmdPressed}.
		{'Remove' . #removeItem . 'Removes the currently selected item'. $r . #cmdPressed}.
		{'Add line' . #addAction . 'Opens a dialog to select actions to be added to the list'. $g . #cmdPressed}.
	}collect: [:each | AAction createActionShortcutPair: each in: collection].
	
	  ^collection
