Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #'Example-TDD'
}

{ #category : #enumerating }
Bank >> reduce: anExpression currency: aString [
	^ Money dollar: 10
]
