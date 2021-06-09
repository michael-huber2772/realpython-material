

x = [0, 10, 2]
y = [0, 1, 4]


list = []
def closestSquaredDistance(x, y):
    for i, n in zip(x, y):
        r = i - n
        list.append([abs(r), x.index(i)])
    final_list = sorted(list)
    print(final_list)
    min_val = final_list[0]
    sec_val = final_list[1]
    pos1 = x[min_val[1]]
    pos2 = y[min_val[1]]
    pos3 = x[sec_val[1]]
    pos4 = y[sec_val[1]]
    distance = (pos1-pos2)^2+(pos3-pos4)
    print(distance)



closestSquaredDistance(x, y)
