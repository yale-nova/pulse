import sys
class BtrdbWorkloadGenerator:
    start = 14436576000000000000;
    counter = 0;
    diff = 83333330
    fixed_bias = 0
    def get_next(self):
        if self.counter % 27 == 0 and self.counter != 0:
            self.fixed_bias += 10
        result = self.start + int(self.counter / 9) * self.diff + self.counter % 9 + self.fixed_bias
        self.counter += 1
        return result


with open(sys.argv[1], 'r') as file:
    g = BtrdbWorkloadGenerator() 
    for line in file:
        key = line.split(',')[0]
        sim_key = g.get_next()
        print(str(key) + " " + str('%100d'%(sim_key)))
    print(sim_key - key)

    