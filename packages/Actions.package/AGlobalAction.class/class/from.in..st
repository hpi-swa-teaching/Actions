as yet unclassified
from: aCollection in: aClass

	| aGlobalAction |

	aGlobalAction := AGlobalActions globalActionFrom: aCollection first.
	
	aGlobalAction clazz: aClass.
	(aCollection size = 2)
		ifTrue:[ aGlobalAction action: aCollection second].
		
	^ aGlobalAction