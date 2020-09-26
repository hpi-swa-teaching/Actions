as yet unclassified
from: evt

	^ self new
		modifierPressed: (evt controlKeyPressed or: [evt commandKeyPressed]);
		key: (Character codePoint: evt keyValue);
		yourself
	