comparing
testHash

	| title actionDescription | 
	
	title := 'Hello :)'.
	actionDescription := AActionDescription new title: title; yourself.
	
	self assert: actionDescription hash equals: title hash
	
	