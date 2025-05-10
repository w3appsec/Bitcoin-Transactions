import random
import time

tr = int((time.time() % 1) * (10**16))
rr = int(random.randint(1,10**17))

print (tr*rr)

