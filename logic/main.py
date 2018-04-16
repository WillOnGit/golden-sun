# main file to run battle damage calculations from

# experimenting with classes: test code straight from article
class Customer(object):
    # Bank customer
    IBAN = '12345'

    def __init__(self, name, balance=0.0):
        self.name = name
        self.balance = balance

    def withdraw(self,amount):
        if amount > self.balance:
            raise RuntimeError('Insufficient balance')
        self.balance -= amount
        return self.balance

    def deposit(self,amount):
        self.balance += amount
        return self.balance

test = Customer('Test Name',100.0)
test.IBAN

# Battle classes
class Adept(object):

    def __init__(self, HP_base = 0, PP_base = 0, ATT_base = 0, DEF_base = 0, AGI_base = 0, LCK_base = 0,\
            venuspower = 0, marspower = 0, mercurypower = 0, jupiterpower = 0, venusresist = 0, marsresist = 0, mercuryresist = 0, jupiterresist = 0,\
            setdjinn = [], standbydjinn = [], weapon = "", shirt = "", trousers = "", boots = "", ring = "", undershirt = "", equipment = []):
        self.HP_base = HP_base
        self.PP_base = PP_base
        self.ATT_base = ATT_base
        self.DEF_base = DEF_base
        self.AGI_base = AGI_base
        self.LCK_base = LCK_base
        self.venuspower = venuspower
        self.marspower = marspower
        self.mercurypower = mercurypower
        self.jupiterpower = jupiterpower
        self.venusresist = venusresist
        self.marsresist = marsresist
        self.mercuryresist = mercuryresist
        self.jupiterresist = jupiterresist
        self.setdjinn = setdjinn
        self.standbydjinn = standbydjinn
        self.weapon = weapon
        self.shirt = shirt
        self.trousers = trousers
        self.boots = boots
        self.ring = ring
        self.undershirt = undershirt
        self.equipment = equipment

    def equipWeapon(self, weapon):
        return "weapon"

    def clearWeapon(self, weapon):
        return "weapon"

    def equipArmor(self, armor):
        return "armor"

    def clearArmor(self, armor):
        return "armor"

    def setDjinni(self, djinni):
        return "djinni"

    def standbyDjinni(self, djinni):
        return "djinni"

    def tradeDjinni(self, other_adept, djinni_traded, djinni_received):
        return "other_adept"

class Monster(object):

    def __init__(self, HP, PP, ATT, DEF, AGI, LCK, turns,\
            venuspower, marspower, mercurypower, jupiterpower, venusresist, marsresist, mercuryresist, jupiterresist):
        print "hello"

isaac = Adept()
garet = Adept()
ivan = Adept()
mia = Adept()
felix = Adept()
jenna = Adept()
sheba = Adept()
piers = Adept()
