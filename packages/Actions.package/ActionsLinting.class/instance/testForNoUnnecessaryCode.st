code-style
testForNoUnnecessaryCode
	
	"SwaLint TestSuite Unnecessary code"
	self assertArbitraryCodeRules: {
		#smallLintAssignmentWithoutEffect .
		#smallLintExtraBlock .
		#smallLintEndTrueFalse .
		#smallLintOnlyReadOrWrittenVariable .
		#smallLintJustSendsSuper .
		#smallLintEquivalentSuperclassMethods .
		#smallLintImplementedNotSent .
		#smallLintOnlyReadOrWrittenTemporary .
		#smallLintEqualsTrue .
		#unnecessaryAssignmentRule: .
		#unreferencedVariable: .
		#smallLintVariableReferencedOnce .
		#smallLintUnreferencedVariables
	}