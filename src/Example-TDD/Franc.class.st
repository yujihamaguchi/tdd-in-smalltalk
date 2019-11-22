Class {
	#name : #Franc,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #initialization }
Franc class >> amount: anInteger [
	^ self new setAmount: anInteger
]

{ #category : #comparing }
Franc >> = anObject [
	^ amount = anObject amount
]

{ #category : #private }
Franc >> amount [
	^ amount
]

{ #category : #private }
Franc >> setAmount: anObject [
	amount := anObject
]

{ #category : #arithmetic }
Franc >> times: aMultiplier [
	^ self class amount: amount * aMultiplier
]
