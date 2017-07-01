'''
WarGame.py
Class for a normal War Card game
'''
import Deck
import Player

class WarGame():
	def __init__(self):
		self.deck1 = Deck.Deck("deck1", "shuffled")
		self.player1 = Player.Player("Alice", self.deck1)
		self.deck2 = Deck.Deck("deck2", "shuffled")
		self.player2 = Player.Player("Bob", self.deck2)

	def run(self):
		print "Start War game"
		turn = 1
		self.player1.disp()
		self.player2.disp()
		while turn < 52:
			print "\nTurn", turn
			print "======"
			top1 = self.deck1.get_top_card()
			top2 = self.deck2.get_top_card()
			print self.player1.name,"shows card:", top1
			print self.player2.name,"shows card:", top2
			if top1 > top2:
				print self.player1.name,"has the higher card"
				self.player1.add_won_cards([top1, top2])

			elif top2 > top1:
				print self.player1.name,"has the higher card"
				self.player2.add_won_cards([top1, top2])
			else:
				print "Players tied cards"
			self.player1.disp()
			print "--------"
			self.player2.disp()	
			turn = turn + 1

	def disp(self):
		print "Game decks:"
		self.deck1.disp()
		self.deck2.disp()