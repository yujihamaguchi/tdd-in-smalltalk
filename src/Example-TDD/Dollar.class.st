Class {
	#name : #Dollar,
	#superclass : #Money,
	#category : #'Example-TDD'
}

{ #category : #initialization }
Dollar class >> amount: anInteger [
	^ self new setAmount: anInteger
]

{ #category : #private }
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
