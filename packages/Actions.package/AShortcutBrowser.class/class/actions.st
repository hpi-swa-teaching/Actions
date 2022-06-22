as yet unclassified
actions
	|collection browseActions|
	<wantsActions>
	collection:= OrderedCollection new.
	browseActions := Dictionary new
		at: #leftSideClassList put: #browseActionsForSelectedClass;
		at: #rightSideMainList put: #browseSelectedAction;
		yourself.
	{   
		{'Browse actions' . browseActions .'Open the methods where actions are defined'. $b . #cmdPressed}.
	}collect: [:each | AAction createActionShortcutPair: each in: collection].
	
	  ^collection