as yet unclassified
actions

	<wantsActions>
	^ {  
		{'Move up' . #moveUp . 'Moves the currently selected items above the items over it' }.
		{'Move down' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Add line' . #addSeparator . 'Adds a seperator/line'}.
	} collect: [:each | AAction from: each]