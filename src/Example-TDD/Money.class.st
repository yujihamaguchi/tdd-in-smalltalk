Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #comparing }
Money >> = anObject [
	^ amount = anObject amount & (self class = anObject class)
]
