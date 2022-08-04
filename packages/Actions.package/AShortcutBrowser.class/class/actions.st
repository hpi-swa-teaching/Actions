as yet unclassified
actions

	<wantsActions>
	
	|browseActions|

	browseActions := Dictionary new
		at: #leftSideClassList put: #browseActionsForSelectedClass;
		at: #RightSide put: #browseSelectedAction;
		yourself.
	^{   
		{'Browse actions' . browseActions .'Open the methods where actions are defined'. 
		$b . #cmdPressed}.
	}collect: [:each | AAction createActions: each]
