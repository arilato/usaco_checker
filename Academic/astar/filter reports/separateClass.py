import csv
import sys

names = [["adhit", "sankaran"], ["kaylin", "li"], ["nathan", "wei"], ["nolan", "chen"], ["philbert", "fan"], ["samuel", "tian"], ["william", "chon"], ["william", "zhou"], ["alex", "dong"]]

input = open(sys.argv[1], 'rt')
output = open(sys.argv[2], 'wt')
reader = csv.reader(input)
writer = csv.writer(output, delimiter=',')
for row in reader:
    for name in names:
        print(row[0])
        if name[1] == row[0].lower() and name[0] == row[1].lower():
            writer.writerow(row)
            break


