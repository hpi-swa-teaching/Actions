as yet unclassified
actions

	<wantsActions>
	^ {  
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' }.
		{'Move down' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Remove' . #removeItem . 'Removes the currently selected item'}.
		{'Add...' . #addAction . 'Opens a dialog to select actions to be added to the list'}
	} collect: [:each | AAction from: each]