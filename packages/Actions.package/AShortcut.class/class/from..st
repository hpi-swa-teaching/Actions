creation
from: evt

	^ self new
		modifierPressed: (evt controlKeyPressed or: [evt commandKeyPressed]);
		shiftPressed: evt shiftPressed;
		key: (Character codePoint: evt keyValue);
		yourself
	