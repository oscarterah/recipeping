import time
import os

def net(int l, int k, int q, int n, int r, int m):
    y = []

    cdef int i, j, p

    for p in range(l, k):
        for i in range(q, n):
            for j in range(r, m):
                hostname = '104.{0}.{1}.{2}'.format(p, i, j)
                response = os.system("ping -c 1 " + hostname)
                if response == 0:
                    y.append(hostname+" is up")

                else:
                    y.append(hostname+" is down")

    return y
