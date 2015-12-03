smallest_val = 10000000000000 # have to start big
biggest_earning = 0 # no earning yet
count = 1

for line in open('input'):
    cur = float(line)
    if cur < smallest_val:
        smallest_val = cur

    if cur - smallest_val > biggest_earning:
        biggest_earning = cur - smallest_val

print biggest_earning
