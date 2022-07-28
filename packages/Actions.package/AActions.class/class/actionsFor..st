accessing
actionsFor: aClass

	^ (((self actionPragmasFor: aClass) 
			collect: [:each | each method])
			collect: [:method | self actionsFrom: method For: aClass])
			flatten
	