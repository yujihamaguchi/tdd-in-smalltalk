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
	| five |
	five := Dollar amount: 5.
	self assert: (five times: 2) equals: (Dollar amount: 10).
	self assert: (five times: 3) equals: (Dollar amount: 15)
]
