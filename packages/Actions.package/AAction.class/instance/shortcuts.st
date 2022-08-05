accessing
shortcuts

	^ (self aactionsApi) 
		shortcutsFor: self 
		in: self clazz
		ifAbsent: [^ nil]