with open('upgrade-paths.txt') as infile:
    for line in enumerate(infile):
        print("{}".format(line[1].strip()))
