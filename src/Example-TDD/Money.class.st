Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #initialization }
Money class >> dollar: anInteger [
	^Dollar amount: anInteger 
]

{ #category : #initialization }
Money class >> franc: anInteger [
	^Franc amount: anInteger.
]

{ #category : #comparing }
Money >> = anObject [
	^ amount = anObject amount & (self class = anObject class)
]
