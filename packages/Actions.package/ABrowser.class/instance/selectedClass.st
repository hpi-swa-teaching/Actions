accessing
selectedClass

	^ self classes at: self classIndex ifAbsent: [nil]