Class {
	#name : #Dollar,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #initialization }
Dollar class >> amount: anInteger [
	^ self new setAmount: anInteger
]

{ #category : #comparing }
Dollar >> = anObject [
	^ amount = anObject amount
]

{ #category : #accessing }
Dollar >> amount [
	^ amount
]

{ #category : #private }
Dollar >> setAmount: anObject [
	amount := anObject
]

{ #category : #arithmetic }
Dollar >> times: aMultiplier [
	^ self class amount: amount * aMultiplier
]
