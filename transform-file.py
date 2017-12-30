# blank = ''
# leader = ''
# newleader = False
# with open('upgrade-paths.txt') as infile:
#     for line in enumerate(infile):
#         if line[1].strip() == blank:
#             newleader = True
#         elif newleader == True:
#             leader = line[1]
#             print("{},{}".format(line[1].strip(),leader))
#             newleader = False
#         else:
#             print("{},{}".format(line[1].strip(),leader))
import re

sequence = 'start'
sequencenumber = 1
with open('class-ordering.csv') as infile:
    for line in enumerate(infile):
        splitline = re.split('\t',line[1])
        if splitline[0] == sequence:
            sequencenumber += 1
        else:
            sequence = splitline[0]
            sequencenumber = 1
        print("{}\t{}".format(line[1].strip(),sequencenumber))
