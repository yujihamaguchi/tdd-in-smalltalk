Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Example-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Dollar amount: 5.
	self
		assert:
			(five
				times: 2;
				amount)
		equals: 10
]
