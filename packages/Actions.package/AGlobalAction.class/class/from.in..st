create
from: aCollection in: aClass

	| aGlobalAction |

	aGlobalAction := self globalActionsSource globalActionFrom: aCollection first.
	aGlobalAction clazz: aClass.
	(aCollection size = 2) ifTrue:[ aGlobalAction action: aCollection second].
		
	^ aGlobalAction