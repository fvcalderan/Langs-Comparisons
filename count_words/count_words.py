words = 'to be or not to be'
fields = words.split()
m = {k:0 for k in fields}
for w in fields: m[w] += 1
print(m)
