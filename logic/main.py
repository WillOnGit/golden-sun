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

query_elemental = "SELECT venuspower, venusresist, marspower, marsresist, mercurypower, mercuryresist, jupiterpower, jupiterresist, element FROM stats_elemental WHERE name = %s"
query_djinn = "SELECT HP, PP, ATT, DEF, AGI, LCK, element FROM djinni WHERE name = %s"

# static references/constants

venus_dominance = ("venus","mercury","jupiter","mars")
mercury_dominance = ("mercury","venus","mars","jupiter")
mars_dominance = ("mars","jupiter","mercury","venus")
jupiter_dominance = ("jupiter","mars","venus","mercury")

# battle classes
class Adept(object):

    def __init__(self, adept_name = '', level = 0, HP_base = 0, PP_base = 0, ATT_base = 0, DEF_base = 0, AGI_base = 0, LCK_base = 0,\
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
        # initialise elemental levels and djinn bonuses
        self.venuslevel = 0
        self.marslevel = 0
        self.mercurylevel = 0
        self.jupiterlevel = 0
        self.djinni_HP_bonus = 0
        self.djinni_PP_bonus = 0
        self.djinni_ATT_bonus = 0
        self.djinni_DEF_bonus = 0
        self.djinni_AGI_bonus = 0
        self.djinni_LCK_bonus = 0
        # calculate base elemental levels / power / resist
        gsdb.execute(query_elemental, (self.adept_name,))
        for (a,b,c,d,e,f,g,h,i) in gsdb:
            self.venuspower_base = a
            self.venusresist_base = b
            self.marspower_base = c
            self.marsresist_base = d
            self.mercurypower_base = e
            self.mercuryresist_base = f
            self.jupiterpower_base = g
            self.jupiterresist_base = h
            if i == "venus":
                self.alignment = "venus"
                self.venuslevel += 5
            if i == "mars":
                self.alignment = "mars"
                self.marslevel += 5
            if i == "jupiter":
                self.alignment = "jupiter"
                self.jupiterlevel += 5
            if i == "mercury":
                self.alignment = "mercury"
                self.mercurylevel += 5
        # calculate djinn bonuses
        for x in self.setdjinn:
            gsdb.execute(query_djinn, (x,))
            for (a,b,c,d,e,f,g) in gsdb:
                self.djinni_HP_bonus += a
                self.djinni_PP_bonus += b
                self.djinni_ATT_bonus += c
                self.djinni_DEF_bonus += d
                self.djinni_AGI_bonus += e
                self.djinni_LCK_bonus += f
                if g == "venus":
                    self.venuslevel += 1
                if g == "mars":
                    self.marslevel += 1
                if g == "jupiter":
                    self.jupiterlevel += 1
                if g == "mercury":
                    self.mercurylevel += 1
        # calculate final power, resist based off final levels
        self.venuspower = self.venuspower_base + 5 * self.venuslevel
        self.marspower = self.marspower_base + 5 * self.marslevel
        self.mercurypower = self.mercurypower_base + 5 * self.mercurylevel
        self.jupiterpower = self.jupiterpower_base + 5 * self.jupiterlevel
        self.venusresist = self.venusresist_base + 5 * self.venuslevel
        self.marsresist = self.marsresist_base + 5 * self.marslevel
        self.mercuryresist = self.mercuryresist_base + 5 * self.mercurylevel
        self.jupiterresist = self.jupiterresist_base + 5 * self.jupiterlevel
        # calculate dominants and class
        self.dominance_array = [(self.venuslevel,"venus"),(self.marslevel,"mars"),(self.jupiterlevel,"jupiter"),(self.mercurylevel,"mercury")]
        self.first_dominant = (-1,"null")
        self.second_dominant = (-1,"null")
        for x in dominance_array:
            if x[0] >= self.first_dominant[0]:
                if x[0] > self.first_dominant[0]:
                    # clear winner
                    self.second_dominant = self.first_dominant
                    self.first_dominant = x
                else:
                    # tiebreaks needed
                    if alignment == "venus":
                        for i in range(4):
                            if venus_dominance[i] == first_dominant[1]:
                                break
                            elif venus_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
                    elif alignment == "mars":
                        for i in range(4):
                            if mars_dominance[i] == first_dominant[1]:
                                break
                            elif mars_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
                    elif alignment == "jupiter":
                        for i in range(4):
                            if jupiter_dominance[i] == first_dominant[1]:
                                break
                            elif jupiter_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
                    elif alignment == "mercury":
                        for i in range(4):
                            if mercury_dominance[i] == first_dominant[1]:
                                break
                            elif mercury_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
        
            if x[0] >= self.second_dominant[0] and self.first_dominant[1] != x[1]:
                if x[0] > self.second_dominant[0]:
                    # clear winner
                    self.second_dominant = x
                else:
                    # tiebreaks needed
                    if alignment == "venus":
                        for i in range(4):
                            if venus_dominance[i] == second_dominant[1]:
                                break
                            elif venus_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
                    elif alignment == "mars":
                        for i in range(4):
                            if mars_dominance[i] == second_dominant[1]:
                                break
                            elif mars_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
                    elif alignment == "jupiter":
                        for i in range(4):
                            if jupiter_dominance[i] == second_dominant[1]:
                                break
                            elif jupiter_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
                    elif alignment == "mercury":
                        for i in range(4):
                            if mercury_dominance[i] == second_dominant[1]:
                                break
                            elif mercury_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
        self.first_dominant = self.first_dominant[1]
        self.second_dominant = self.second_dominant[1]
        # calculate equipment bonuses
        # something
        # calculate final stats based off base stats, djinn bonuses, class and equipment
        self.HP_mod = 1.0
        self.PP_mod = 1.0
        self.ATT_mod = 1.0
        self.DEF_mod = 1.0
        self.AGI_mod = 1.0
        self.LCK_mod = 1.0
        #self.HP = self.
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

#gsdb.close()
#connection.close()
