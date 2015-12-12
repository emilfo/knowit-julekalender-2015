var num = 7
var tot = 0

while num < 100000000:
    if (num %% 5) != 0:
        tot += num
    num += 7
echo (tot)
