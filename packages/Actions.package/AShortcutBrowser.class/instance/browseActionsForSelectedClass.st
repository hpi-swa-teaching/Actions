as yet unclassified
browseActionsForSelectedClass
	|systemNavigator methodList|
	
	systemNavigator := SystemNavigation new.
	methodList := systemNavigator allMethodsSelect: [:method | method hasPragma: #wantsActions] localTo: self selectedClass.
	systemNavigator browseMessageList: methodList name: 'All Action Definitions of Class: '  , self selectedClass.