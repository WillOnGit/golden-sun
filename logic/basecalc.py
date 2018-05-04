"""
Recover base stats from displayed

Since working on work laptop, mysql unavailable. Therefore, am
hardcoding values.

Equipping nothing, it reckons Felix has:
335
121
181
82
152
4

setting echo, iron, spritz, ember, it reckons he has:
335
121
181
81 !
152
3 !

"""

HP = 372
PP = 120
ATT = 202
DEF = 94
AGI = 144
LCK = 4

HP_mod = 1.1
PP_mod = 0.8
ATT_mod = 1.1
DEF_mod = 1.0
AGI_mod = 1.1
LCK_mod = 1.0

HP_item = 0
PP_item = 0
ATT_item = 0
DEF_item = 0
AGI_item = 0
LCK_item = 0

HP_djinn = 0
PP_djinn = 0
ATT_djinn = 0
DEF_djinn = 0
AGI_djinn = 0
LCK_djinn = 0

HP_base = 335
PP_base = 121
ATT_base = 181
DEF_base = 82
AGI_base = 152
LCK_base = 4

def base_from_stats(HP,PP,ATT,DEF,AGI,LCK):
    print (HP,PP,ATT,DEF,AGI,LCK)
    HP_premod = int(round(HP / HP_mod))
    HP_base = HP_premod - HP_item - HP_djinn
    PP_premod = int(round(PP / PP_mod))
    PP_base = PP_premod - PP_item - PP_djinn
    ATT_premod = int(round(ATT / ATT_mod))
    ATT_base = ATT_premod - ATT_item - ATT_djinn
    DEF_premod = int(round(DEF / DEF_mod))
    DEF_base = DEF_premod - DEF_item - DEF_djinn
    AGI_premod = int(round(AGI / AGI_mod))
    AGI_base = AGI_premod - AGI_item - AGI_djinn
    LCK_premod = int(round(LCK / LCK_mod))
    LCK_base = LCK_premod - LCK_item - LCK_djinn
    print "========== Comparison =========="
    print stats_from_base(HP_base - 1, PP_base - 1, ATT_base - 1, DEF_base - 1, AGI_base - 1, LCK_base - 1)
    print stats_from_base(HP_base, PP_base, ATT_base, DEF_base, AGI_base, LCK_base)
    print stats_from_base(HP_base + 1, PP_base + 1, ATT_base + 1, DEF_base + 1, AGI_base + 1, LCK_base + 1)
    print "======== End Comparison ========"
    return (HP_base, PP_base, ATT_base, DEF_base, AGI_base, LCK_base)

def stats_from_base(HP_base,PP_base,ATT_base,DEF_base,AGI_base,LCK_base):
    HP_premod = HP_base + HP_item + HP_djinn
    HP = int(round(HP_premod * HP_mod))
    PP_premod = PP_base + PP_item + PP_djinn
    PP = int(round(PP_premod * PP_mod))
    ATT_premod = ATT_base + ATT_item + ATT_djinn
    ATT = int(round(ATT_premod * ATT_mod))
    DEF_premod = DEF_base + DEF_item + DEF_djinn
    DEF = int(round(DEF_premod * DEF_mod))
    AGI_premod = AGI_base + AGI_item + AGI_djinn
    AGI = int(round(AGI_premod * AGI_mod))
    LCK_premod = LCK_base + LCK_item + LCK_djinn
    LCK = int(round(LCK_premod * LCK_mod))
    return (HP, PP, ATT, DEF, AGI, LCK)
