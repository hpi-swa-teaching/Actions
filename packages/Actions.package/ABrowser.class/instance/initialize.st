initialize-release
initialize

	super initialize.
	AActions addDependent: self.
	self classIndex: 1