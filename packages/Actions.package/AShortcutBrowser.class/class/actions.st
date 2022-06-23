as yet unclassified
actions
	|browseActions|
	<wantsActions>

	browseActions := Dictionary new
		at: #leftSideClassList put: #browseActionsForSelectedClass;
		at: #rightSideMainList put: #browseSelectedAction;
		yourself.
	^{   
		{'Browse actions' . browseActions .'Open the methods where actions are defined'. $b . #cmdPressed}.
	}collect: [:each | AAction createActionShortcutPair: each]
