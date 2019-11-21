Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Example-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: (Dollar amount: 5) equals: (Dollar amount: 5).
	self deny: (Dollar amount: 5) equals: (Dollar amount: 6)
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five product |
	five := Dollar amount: 5.
	product := five times: 2.
	self assert: product amount equals: 10.
	product := five times: 3.
	self assert: product amount equals: 15
]
