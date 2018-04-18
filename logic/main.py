# main file to run battle damage calculations from

# mysql stuff
import mysql.connector

sql_user = 'gsuser'
sql_password = 'gsuser_pass'
sql_host = '127.0.0.1'
sql_database = 'goldensun'

connection = mysql.connector.connect(user = sql_user, password = sql_password, host = sql_host, database = sql_database)

gsdb = connection.cursor()

# queries

query_elemental = "SELECT venuspower, venusresist, marspower, marsresist, mercurypower, mercuryresist, jupiterpower, jupiterresist FROM stats_elemental WHERE name = %s"

# battle classes
class Adept(object):

    def __init__(self, adept_name = '', HP_base = 0, PP_base = 0, ATT_base = 0, DEF_base = 0, AGI_base = 0, LCK_base = 0,\
            setdjinn = [], standbydjinn = [], weapon = "", shirt = "", trousers = "", boots = "", ring = "", undershirt = "", equipment = []):
        self.adept_name = adept_name
        self.HP_base = HP_base
        self.PP_base = PP_base
        self.ATT_base = ATT_base
        self.DEF_base = DEF_base
        self.AGI_base = AGI_base
        self.LCK_base = LCK_base
        self.setdjinn = setdjinn
        self.standbydjinn = standbydjinn
        self.weapon = weapon
        self.shirt = shirt
        self.trousers = trousers
        self.boots = boots
        self.ring = ring
        self.undershirt = undershirt
        self.equipment = equipment
        self.calculatestats()

    def calculatestats(self):
        # calculate elemental levels / power / resist etc
        gsdb.execute(query_elemental, (self.adept_name,))
        for (a,b,c,d,e,f,g,h) in gsdb:
            self.venuspower_base = a
            self.venusresist_base = b
            self.marspower_base = c
            self.marsresist_base = d
            self.mercurypower_base = e
            self.mercuryresist_base = f
            self.jupiterpower_base = g
            self.jupiterresist_base = h
        #self.venuslevel = 
        #self.marslevel = 
        #self.mercurylevel = 
        #self.jupiterlevel = 
        # add 5 to alignment self.element_base = 
        #self.venuspower = venuspower_base + 5 * venuslevel
        #self.marspower = marspower_base + 5 * marslevel
        #self.mercurypower = mercurypower_base + 5 * mercurylevel
        #self.jupiterpower = jupiterpower_base + 5 * jupiterlevel
        #self.venusresist = venusresist_base + 5 * venuslevel
        #self.marsresist = marsresist_base + 5 * marslevel
        #self.mercuryresist = mercuryresist_base + 5 * mercurylevel
        #self.jupiterresist = jupiterresist_base + 5 * jupiterlevel
        # calculate dominants and class
        # something
        # calculate HP etc.
        #self.HP = 
        #self.PP = 
        #self.ATT = 
        #self.DEF = 
        #self.AGI = 
        #self.LCK = 
        return "ok"

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

# basic initialisation

isaac = Adept("Isaac")
garet = Adept("Garet")
ivan = Adept("Ivan")
mia = Adept("Mia")
felix = Adept("Felix")
jenna = Adept("Jenna")
sheba = Adept("Sheba")
piers = Adept("Piers")
