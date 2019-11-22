Class {
	#name : #Franc,
	#superclass : #Money,
	#category : #'Example-TDD'
}

{ #category : #initialization }
Franc class >> amount: anInteger currency: aString [
	^ super amount: anInteger currency: aString
]

{ #category : #private }
Franc >> amount [
	^ amount
]

{ #category : #private }
Franc >> setAmount: anObject currency: aString [
	amount := anObject.
	currency := aString
]

{ #category : #arithmetic }
Franc >> times: aMultiplier [
	^ Money franc: amount * aMultiplier
]
