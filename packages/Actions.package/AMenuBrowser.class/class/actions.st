as yet unclassified
actions
	|dict|
	<wantsActions>
	dict:= Dictionary new.
	{   
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' . $a . #cmdPressed}.
		{'Move down' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Add line' . #addSeparator . 'Adds a seperator/line'. $c . #cmdPressed}.
		{'Remove' . #removeItem . 'Removes the currently selected item'. $r . #cmdPressed}.
		{'Add...' . #addAction . 'Opens a dialog to select actions to be added to the list'}.
	}collect: [:each | AAction createActionShortcutPair: each in: dict].
	
	Transcript show: dict keys.
	  ^dict
