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

    def __init__(self, HP_base, PP_base, ATT_base, DEF_base, AGI_base, LCK_base,\
            venuspower, marspower, mercurypower, jupiterpower, venusresist, marsresist, mercuryresist, jupiterresist,\
            setdjinn, standbydjinn, weapon = "", armor = "", equipment = ""):
        print "testing"

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

#isaac = Adept()
#garet = Adept()
#ivan = Adept()
#mia = Adept()
#felix = Adept()
#jenna = Adept()
#sheba = Adept()
#piers = Adept()
