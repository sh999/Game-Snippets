import pygame, sys
from pygame.locals import *

class Player:
	def __init__(self, x=None, y=None):
		if x == None and y == None:
			self.x = 0
			self.y = 0
		else:
			self.x = x
			self.y = y
		self.col = (100,0,0)
		self.radius = 30 
	def move(self):
		self.y -= 0.01
	def draw(self, screen):
		pygame.draw.ellipse(screen, self.col, [self.x, self.y, self.radius, self.radius], 0)
