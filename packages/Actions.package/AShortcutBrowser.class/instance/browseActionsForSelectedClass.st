browsing
browseActionsForSelectedClass
	|systemNavigator methodList navigatorTitle|
	
	navigatorTitle := '', self selectedClass, ' Class Actions Definitions'.
	systemNavigator := SystemNavigation new.
	(self selectedClass) ifNotNil: [methodList := systemNavigator allMethodsSelect: 
		[:method | AActions hasAnyPragmas: method] localTo: self selectedClass.
		systemNavigator browseMessageList: methodList name: navigatorTitle autoSelect: 		navigatorTitle]

