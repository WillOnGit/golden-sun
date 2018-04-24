"""
test file for calculating dominance and possibly class too.

The problem is finding the max value, checking if there are ties, and then finding
second place.
"""

#        Primary  Neutral  Weakness Affinity
v_ord = ("venus","mercury","jupiter","mars")
m_ord = ("mercury","venus","mars","jupiter")
s_ord = ("mars","jupiter","mercury","venus")
j_ord = ("jupiter","mars","venus","mercury")

alignment = "mars"

ven = (1,"venus")
mar = (2,"mars")
jup = (3,"jupiter")
mer = (3,"mercury")

arr = [ven,mar,jup,mer]

# -1 means unchecked/no contest
first = ""
second = ""
one = -1
two = -1
for x in arr:
    if x[0] >= one:
        if x[0] > one:
            two = one
            second = first
            one = x[0]
            first = x[1]
        else:
            # check ties
            if alignment == "venus":
                for i in range(4):
                    if v_ord[i] == first:
                        break
                    elif v_ord[i] == x[1]:
                        two = one
                        second = first
                        one = x[0]
                        first = x[1]
                        break
            elif alignment == "mars":
                for i in range(4):
                    if s_ord[i] == first:
                        break
                    elif s_ord[i] == x[1]:
                        two = one
                        second = first
                        one = x[0]
                        first = x[1]
                        break
            elif alignment == "jupiter":
                for i in range(4):
                    if j_ord[i] == first:
                        break
                    elif j_ord[i] == x[1]:
                        two = one
                        second = first
                        one = x[0]
                        first = x[1]
                        break
            elif alignment == "mercury":
                for i in range(4):
                    if m_ord[i] == first:
                        break
                    elif m_ord[i] == x[1]:
                        two = one
                        second = first
                        one = x[0]
                        first = x[1]
                        break

    if x[0] >= two and first != x[1]:
        if x[0] > two:
            two = x[0]
            second = x[1]
        else:
            # check ties
            if alignment == "venus":
                for i in range(4):
                    if v_ord[i] == second:
                        break
                    elif v_ord[i] == x[1]:
                        two = x[0]
                        second = x[1]
                        break
            elif alignment == "mars":
                for i in range(4):
                    if s_ord[i] == second:
                        break
                    elif s_ord[i] == x[1]:
                        two = x[0]
                        second = x[1]
                        break
            elif alignment == "jupiter":
                for i in range(4):
                    if j_ord[i] == second:
                        break
                    elif j_ord[i] == x[1]:
                        two = x[0]
                        second = x[1]
                        break
            elif alignment == "mercury":
                for i in range(4):
                    if m_ord[i] == second:
                        break
                    elif m_ord[i] == x[1]:
                        two = x[0]
                        second = x[1]
                        break

    print first, second, one, two
