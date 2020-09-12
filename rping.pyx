import time
import os

def net(int k, int n, int m):
    y = []

    cdef int i, j, p

    for p in range(k):
        for i in range(n):
            for j in range(m):
                hostname = '104.{0}.{1}.{2}'.format(p, i, j)
                response = os.system("ping -c 1 " + hostname)
                if response == 0:
                    y.append(hostname+" is up")

                else:
                    y.append(hostname+" is down")

    return y
