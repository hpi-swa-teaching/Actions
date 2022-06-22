as yet unclassified
actions
	|collection moveUpActions|
	<wantsActions>
	collection:= OrderedCollection new.
	moveUpActions := Dictionary new
		at: #rightSideMainList put: #moveUp;
		yourself.
	{   
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' . $a . #cmdPressed}.
		{'Move up' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Add line' . #addSeparator . 'Adds a seperator/line'. $A . #cmdPressed}.
		{'Remove' . #removeItem . 'Removes the currently selected item'. $r . #cmdPressed}.
		{'Add...' . #addAction . 'Opens a dialog to select actions to be added to the list'. $c . #cmdPressed}.
	}collect: [:each | AAction createActionShortcutPair: each in: collection].
	
	  ^collection