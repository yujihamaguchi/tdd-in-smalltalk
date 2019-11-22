Class {
	#name : #Franc,
	#superclass : #Money,
	#category : #'Example-TDD'
}

{ #category : #initialization }
Franc class >> amount: anInteger currency: aString [
	^ super amount: anInteger currency: aString
]
