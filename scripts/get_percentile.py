from tdigest import TDigest
import sys

if __name__ == '__main__':
    digest = TDigest()
    with open(sys.argv[1], "r") as f:
        lines = f.readlines()
        for line in lines:
            print(float(line.strip()))
            digest.update(float(line.strip()))

    print(digest.percentile(int(sys.argv[2])))


