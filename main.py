
import io

import random

with open("largetsv.txt", "w", buffering=1024 * 1024 * 1024) as f:
    for i in range(4000 * 10000):
        f.write(str(i))
        f.write("\t")
        f.write(str(random.random()))
        f.write("\t")
        f.write(str(random.random()))
        f.write("\n")
