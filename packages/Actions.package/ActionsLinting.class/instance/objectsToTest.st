private
objectsToTest

	| testObjects|
	testObjects := SystemNavigation default allClasses .
	testObjects := testObjects select: [:x| x class category beginsWith: 'Actions-Core' ].
	
	^ testObjects := testObjects collect: [ :aObject |
		aObject as: SLTestObject]