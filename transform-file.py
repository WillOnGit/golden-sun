blank = ''
leader = ''
newleader = False
with open('upgrade-paths.txt') as infile:
    for line in enumerate(infile):
        if line[1].strip() == blank:
            newleader = True
        elif newleader == True:
            leader = line[1]
            print("{},{}".format(line[1].strip(),leader))
            newleader = False
        else:
            print("{},{}".format(line[1].strip(),leader))
