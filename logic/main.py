# main file to run battle damage calculations from

# mysql stuff

import mysql.connector

mysql_user = 'gsuser'
mysql_password = 'gsuser_pass'
mysql_host = '127.0.0.1'
mysql_database = 'goldensun'

mysql_connection = mysql.connector.connect(user = mysql_user, password = mysql_password, host = mysql_host, database = mysql_database)
gsdb = mysql_connection.cursor()

# queries

query_elemental = "SELECT venuspower, venusresist, marspower, marsresist, jupiterpower, jupiterresist, mercurypower, mercuryresist, element FROM stats_elemental WHERE name = %s"
query_djinn = "SELECT HP, PP, ATT, DEF, AGI, LCK, element FROM djinni WHERE name = %s"
query_class = "SELECT name, HP, PP, ATT, DEF, AGI, LCK, family, familyrank FROM class WHERE venus <= %s AND mars <= %s AND jupiter <= %s AND mercury <=%s AND type = %s ORDER BY venus + mars + jupiter + mercury DESC LIMIT 1;"
query_weapon = "SELECT ATT, buffs FROM weapon WHERE name = %s"
query_head = "SELECT DEF, buffs FROM armor WHERE name = %s"
query_chest = "SELECT DEF, buffs FROM armor WHERE name = %s"
query_shield = "SELECT DEF, buffs FROM armor WHERE name = %s"
query_boots = "SELECT DEF, buffs FROM armor WHERE name = %s"
query_undershirt = "SELECT DEF, buffs FROM armor WHERE name = %s"
query_psynergy = "SELECT upgrades FROM class WHERE family = %s AND familyrank = %s"

# static references/constants

venus_dominance = ("venus","mercury","jupiter","mars")
mercury_dominance = ("mercury","venus","mars","jupiter")
mars_dominance = ("mars","jupiter","mercury","venus")
jupiter_dominance = ("jupiter","mars","venus","mercury")

# battle classes
class Adept(object):

    def __init__(self, adept_name = '', level = 0, HP_base = 0, PP_base = 0, ATT_base = 0, DEF_base = 0, AGI_base = 0, LCK_base = 0,\
            setdjinn = [], standbydjinn = [], weapon = "", head = "", chest = "", shield = "", boots = "", ring = "", undershirt = "", equipment = []):
        self.adept_name = adept_name
        self.level = level
        self.HP_base = HP_base
        self.PP_base = PP_base
        self.ATT_base = ATT_base
        self.DEF_base = DEF_base
        self.AGI_base = AGI_base
        self.LCK_base = LCK_base
        self.setdjinn = setdjinn
        self.standbydjinn = standbydjinn
        self.weapon = weapon
        self.head = head
        self.chest = chest
        self.shield = shield
        self.boots = boots
        self.ring = ring
        self.undershirt = undershirt
        self.equipment = equipment
        self.calculatestats()

    def calculatestats(self):
        # calculate base elemental levels / alignment / power / resist
        self.venuslevel = 0
        self.marslevel = 0
        self.mercurylevel = 0
        self.jupiterlevel = 0
        gsdb.execute(query_elemental, (self.adept_name,))
        for (a,b,c,d,e,f,g,h,i) in gsdb:
            self.venuspower_base = a
            self.venusresist_base = b
            self.marspower_base = c
            self.marsresist_base = d
            self.jupiterpower_base = e
            self.jupiterresist_base = f
            self.mercurypower_base = g
            self.mercuryresist_base = h
            if i == "venus":
                self.alignment = "venus"
                self.affinity = "mars"
                self.venuslevel += 5
            if i == "mars":
                self.alignment = "mars"
                self.affinity = "venus"
                self.marslevel += 5
            if i == "jupiter":
                self.alignment = "jupiter"
                self.affinity = "mercury"
                self.jupiterlevel += 5
            if i == "mercury":
                self.alignment = "mercury"
                self.affinity = "jupiter"
                self.mercurylevel += 5
        # calculate djinn bonuses
        self.djinn_HP_bonus = 0
        self.djinn_PP_bonus = 0
        self.djinn_ATT_bonus = 0
        self.djinn_DEF_bonus = 0
        self.djinn_AGI_bonus = 0
        self.djinn_LCK_bonus = 0
        for x in self.setdjinn:
            gsdb.execute(query_djinn, (x,))
            for (a,b,c,d,e,f,g) in gsdb:
                self.djinn_HP_bonus += a
                self.djinn_PP_bonus += b
                self.djinn_ATT_bonus += c
                self.djinn_DEF_bonus += d
                self.djinn_AGI_bonus += e
                self.djinn_LCK_bonus += f
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
        # calculate first and second dominants
        self.dominance_array = [(self.venuslevel,"venus"),(self.marslevel,"mars"),(self.jupiterlevel,"jupiter"),(self.mercurylevel,"mercury")]
        self.first_dominant = (-1,None)
        self.second_dominant = (-1,None)
        for x in self.dominance_array:
            if x[0] >= self.first_dominant[0]:
                if x[0] > self.first_dominant[0]:
                    # clear winner
                    self.second_dominant = self.first_dominant
                    self.first_dominant = x
                else:
                    # tiebreaks needed
                    if self.alignment == "venus":
                        for i in range(4):
                            if venus_dominance[i] == self.first_dominant[1]:
                                break
                            elif venus_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
                    elif self.alignment == "mars":
                        for i in range(4):
                            if mars_dominance[i] == self.first_dominant[1]:
                                break
                            elif mars_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
                    elif self.alignment == "jupiter":
                        for i in range(4):
                            if jupiter_dominance[i] == self.first_dominant[1]:
                                break
                            elif jupiter_dominance[i] == x[1]:
                                self.second_dominant = self.first_dominant
                                self.first_dominant = x
                                break
                    elif self.alignment == "mercury":
                        for i in range(4):
                            if mercury_dominance[i] == self.first_dominant[1]:
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
                    if self.alignment == "venus":
                        for i in range(4):
                            if venus_dominance[i] == self.second_dominant[1]:
                                break
                            elif venus_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
                    elif self.alignment == "mars":
                        for i in range(4):
                            if mars_dominance[i] == self.second_dominant[1]:
                                break
                            elif mars_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
                    elif self.alignment == "jupiter":
                        for i in range(4):
                            if jupiter_dominance[i] == self.second_dominant[1]:
                                break
                            elif jupiter_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
                    elif self.alignment == "mercury":
                        for i in range(4):
                            if mercury_dominance[i] == self.second_dominant[1]:
                                break
                            elif mercury_dominance[i] == x[1]:
                                self.second_dominant = x
                                break
        # calculate class
        if False:#(how to do this?)
            # item table
            gsdb.execute(query_class, (self.venuslevel, self.marslevel, self.jupiterlevel, self.mercurylevel, "item"))
            for (a,b,c,d,e,f,g,h,i) in gsdb:
                self.adept_class = str(a)
                self.class_HP_mod = float(b)
                self.class_PP_mod = float(c)
                self.class_ATT_mod = float(d)
                self.class_DEF_mod = float(e)
                self.class_AGI_mod = float(f)
                self.class_LCK_mod = float(g)
                self.adept_class_family = str(h)
                self.adept_class_family_rank = int(i)
        elif self.second_dominant[0] == 0:
            # primary djinni only
            if self.adept_name == "jenna" or self.adept_name == "piers":
                gsdb.execute(query_class, (self.venuslevel, self.marslevel, self.jupiterlevel, self.mercurylevel, "lostage"))
                for (a,b,c,d,e,f,g,h,i) in gsdb:
                    self.adept_class = str(a)
                    self.class_HP_mod = float(b)
                    self.class_PP_mod = float(c)
                    self.class_ATT_mod = float(d)
                    self.class_DEF_mod = float(e)
                    self.class_AGI_mod = float(f)
                    self.class_LCK_mod = float(g)
                    self.adept_class_family = str(h)
                    self.adept_class_family_rank = int(i)
            else:
                gsdb.execute(query_class, (self.venuslevel, self.marslevel, self.jupiterlevel, self.mercurylevel, "basic"))
                for (a,b,c,d,e,f,g,h,i) in gsdb:
                    self.adept_class = str(a)
                    self.class_HP_mod = float(b)
                    self.class_PP_mod = float(c)
                    self.class_ATT_mod = float(d)
                    self.class_DEF_mod = float(e)
                    self.class_AGI_mod = float(f)
                    self.class_LCK_mod = float(g)
                    self.adept_class_family = str(h)
                    self.adept_class_family_rank = int(i)
        elif self.first_dominant[1] == self.affinity or self.second_dominant[1] == self.affinity:
            # joint class table
            if self.alignment == "venus" or "mars":
                gsdb.execute(query_class, (self.venuslevel, self.marslevel, self.jupiterlevel, self.mercurylevel, "venus+mars"))
                for (a,b,c,d,e,f,g,h,i) in gsdb:
                    self.adept_class = str(a)
                    self.class_HP_mod = float(b)
                    self.class_PP_mod = float(c)
                    self.class_ATT_mod = float(d)
                    self.class_DEF_mod = float(e)
                    self.class_AGI_mod = float(f)
                    self.class_LCK_mod = float(g)
                    self.adept_class_family = str(h)
                    self.adept_class_family_rank = int(i)
            else:
                gsdb.execute(query_class, (self.venuslevel, self.marslevel, self.jupiterlevel, self.mercurylevel, "jupiter+mercury"))
                for (a,b,c,d,e,f,g,h,i) in gsdb:
                    self.adept_class = str(a)
                    self.class_HP_mod = float(b)
                    self.class_PP_mod = float(c)
                    self.class_ATT_mod = float(d)
                    self.class_DEF_mod = float(e)
                    self.class_AGI_mod = float(f)
                    self.class_LCK_mod = float(g)
                    self.adept_class_family = str(h)
                    self.adept_class_family_rank = int(i)
        else:
            # secondary dominant table
            gsdb.execute(query_class, (self.venuslevel, self.marslevel, self.jupiterlevel, self.mercurylevel, self.second_dominant[1]))
            for (a,b,c,d,e,f,g,h,i) in gsdb:
                self.adept_class = str(a)
                self.class_HP_mod = float(b)
                self.class_PP_mod = float(c)
                self.class_ATT_mod = float(d)
                self.class_DEF_mod = float(e)
                self.class_AGI_mod = float(f)
                self.class_LCK_mod = float(g)
                self.adept_class_family = str(h)
                self.adept_class_family_rank = int(i)
        
        # calculate equipment bonuses
        self.item_HP_bonus = 0
        self.item_PP_bonus = 0
        self.item_ATT_bonus = 0
        self.item_DEF_bonus = 0
        self.item_AGI_bonus = 0
        self.item_LCK_bonus = 0
        gsdb.execute(query_weapon, (self.weapon,))
        for (a,b) in gsdb:
            self.item_ATT_bonus += a
            if b != None:
                for x in b.split(" "):
                    print x
        gsdb.execute(query_head, (self.head,))
        for (a,b) in gsdb:
            self.item_DEF_bonus += a
            if b != None:
                for x in b.split(" "):
                    print x
        gsdb.execute(query_chest, (self.chest,))
        for (a,b) in gsdb:
            self.item_DEF_bonus += a
            if b != None:
                for x in b.split(" "):
                    print x
        gsdb.execute(query_shield, (self.shield,))
        for (a,b) in gsdb:
            self.item_DEF_bonus += a
            if b != None:
                for x in b.split(" "):
                    print x
        gsdb.execute(query_boots, (self.boots,))
        for (a,b) in gsdb:
            self.item_DEF_bonus += a
            if b != None:
                for x in b.split(" "):
                    print x
        gsdb.execute(query_undershirt, (self.undershirt,))
        for (a,b) in gsdb:
            self.item_DEF_bonus += a
            if b != None:
                for x in b.split(" "):
                    print x
        # calculate final stats based off base stats, djinn bonuses, class and equipment
        self.HP = int(round((self.HP_base + self.item_HP_bonus + self.djinn_HP_bonus) * self.class_HP_mod))
        self.PP = int(round((self.PP_base + self.item_PP_bonus + self.djinn_PP_bonus) * self.class_PP_mod))
        self.ATT = int(round((self.ATT_base + self.item_ATT_bonus + self.djinn_ATT_bonus) * self.class_ATT_mod))
        self.DEF = int(round((self.DEF_base + self.item_DEF_bonus + self.djinn_DEF_bonus) * self.class_DEF_mod))
        self.AGI = int(round((self.AGI_base + self.item_AGI_bonus + self.djinn_AGI_bonus) * self.class_AGI_mod))
        self.LCK = int(round((self.LCK_base + self.item_LCK_bonus + self.djinn_LCK_bonus) * self.class_LCK_mod))
        # calculate psynergy based off class + level
        self.psynergy = []
        for x in range(1,self.adept_class_family_rank+1):
            gsdb.execute(query_psynergy, (self.adept_class_family,x))
            for (a,) in gsdb:
                if a != None:
                    checklist = str(a).split(', ')
                    for x in checklist:
                        if x[0]!='[':
                            # it's a new one
                            y = x.split(':')
                            if int(y[0])>self.level:
                                break
                            else:
                                self.psynergy.append(y[1])
                        else:
                            # it's an upgrade
                            y = x[1:-1].split(':')
                            for i in range(len(self.psynergy)):
                                if self.psynergy[i] == y[0]:
                                    self.psynergy[i] = y[1]
                                    break
        return None

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

# 'helper' functions
def print_adept_stats(adept):
    print adept.adept_name
    print adept.adept_class
    print "HP = %d" % (adept.HP)
    print "PP = %d" % (adept.PP)
    print "ATT = %d" % (adept.ATT)
    print "DEF = %d" % (adept.DEF)
    print "AGI = %d" % (adept.AGI)
    print "LCK = %d" % (adept.LCK)
    print adept.setdjinn
    return 0

# basic initialisation

#isaac = Adept("Isaac")
#garet = Adept("Garet")
#ivan = Adept("Ivan")
#mia = Adept("Mia")
#felix = Adept("Felix")
#jenna = Adept("Jenna")
#sheba = Adept("Sheba")
#piers = Adept("Piers")

felix = Adept(adept_name = 'Felix', level = 39, HP_base = 335, PP_base = 121, ATT_base = 181, DEF_base = 82, AGI_base = 152, LCK_base = 4,\
            setdjinn = ["echo","iron","steel","mud","flower","meld","petra","salt","mold"], standbydjinn = [], weapon = "Sol Blade", head = "Thorn Crown", chest = "Erinyes Tunic", shield = "War Gloves", boots = "Hyper Boots", ring = "", undershirt = "Golden Shirt", equipment = [])

gsdb.close()
mysql_connection.close()
