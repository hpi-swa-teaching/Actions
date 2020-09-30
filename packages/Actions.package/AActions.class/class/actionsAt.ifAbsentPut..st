access class vars
actionsAt: aClass ifAbsentPut: aBlock

	^ Actions at: aClass name ifAbsentPut: aBlock