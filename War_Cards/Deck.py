'''
Deck.py
Class for a deck of 52 cards
'''
import random

class Deck():
	def __init__(self, name, mode):
		self.name = name
		suits = ['C','S','H','D']
		nums = [x for x in range(2,15)]
		card_names = [(x,y) for x in suits for y in nums]
		self.cards = card_names

		if mode == "ordered":
			self.cards = card_names
		elif mode == "shuffled":
			random.shuffle(self.cards)
		elif mode == "blank":
			self.cards = []

	def get_top_card(self):
		top_card = self.cards[-1]
		self.cards = self.cards[:-1]
		return top_card

	@staticmethod
	def larger_than(card1, card2):
	
		if card1[1] > card2[1]:
			return True
		else:
			return False


	# def shuffle(self):
	# 	random.shuffle(self.cards)

	def disp(self):
		print "Deck name:", self.name
		for card in self.cards:
			print card[0] + str(card[1]) + ",",
		print 