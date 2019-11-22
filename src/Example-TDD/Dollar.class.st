Class {
	#name : #Dollar,
	#superclass : #Money,
	#category : #'Example-TDD'
}

{ #category : #initialization }
Dollar class >> amount: anInteger currency: aString [
	^ super amount: anInteger currency: aString
]
