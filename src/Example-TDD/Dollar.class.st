Class {
	#name : #Dollar,
	#superclass : #Money,
	#category : #'Example-TDD'
}

{ #category : #initialization }
Dollar class >> amount: anInteger currency: aString [
	^ super amount: anInteger currency: aString
]

{ #category : #private }
Dollar >> amount [
	^ amount
]

{ #category : #private }
Dollar >> setAmount: anObject currency: aString [
	amount := anObject.
	currency := aString
]

{ #category : #arithmetic }
Dollar >> times: aMultiplier [
	^ Money dollar: amount * aMultiplier
]
