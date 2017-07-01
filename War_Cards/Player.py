'''
Player.py
Class for player in war card game
'''
import Deck

class Player():
	def __init__(self, name, deck):
		self.name = name
		# Playing deck of which to show card in each turn
		self.deck = deck
		self.cards_won = []

	def add_won_cards(self, card):
		self.cards_won.extend(card)


	def disp(self):
		print "Player name:", self.name
		print "Player's deck:"
		self.deck.disp()
		print "Player's won cards:"
		print self.cards_won
