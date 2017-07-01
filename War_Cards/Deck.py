'''
Deck.py
Class for a deck of 52 cards
'''
import random

class Deck():
	def __init__(self, name, mode):
		self.name = name
		if mode == "ordered":
			self.cards = [x for x in range(1,53)]
		elif mode == "shuffled":
			self.cards = [x for x in range(1,53)]
			random.shuffle(self.cards)
		elif mode == "blank":
			self.cards = []

	def get_top_card(self):
		top_card = self.cards[-1]
		self.cards = self.cards[:-1]
		return top_card

	# def shuffle(self):
	# 	random.shuffle(self.cards)

	def disp(self):
		print "Deck name:", self.name
		for card in self.cards:
			print card,
		print 