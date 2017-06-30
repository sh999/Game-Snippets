
class TacticalRound():
    '''
    Determines damage between two warriors, AOW style
    '''
    def __init__(self, attacker, defender):
        self.attacker = attacker
        self.defender = defender

    def attack(self):
        print("attacker's attack:" + str(self.attacker.attack))
        print("defender's defense:" + str(self.defender.defense))
        damage = self.attacker.attack-self.defender.defense + 10
        self.defender.health = self.defender.health - damage

        print("attacker's health:" + str(self.attacker.health))
        print("defender's health:" + str(self.defender.health))

