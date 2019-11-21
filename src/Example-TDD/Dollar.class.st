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

{ #category : #accessing }
Dollar >> amount [
	^ amount
]

{ #category : #initialization }
Dollar >> setAmount: anObject [
	amount := anObject
]

{ #category : #calculating }
Dollar >> times: aMultiplier [
	amount := amount * aMultiplier
]
