as yet unclassified
actions2

	<wantsActions>
	^ {  
		{'Dup 2' . #moveUp . 'Moves the currently selected items above the items over it' }.
		{'Dup' . #moveDown . 'Moves the currently selected items under the items under it' }.
		{'Add line' . #addSeparator . 'Adds a seperator/line'}.
	} collect: [:each | AAction from: each]
