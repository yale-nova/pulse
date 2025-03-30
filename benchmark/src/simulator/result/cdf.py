import sys


def read_cdf(filename):
    prev_count = 0
    cross_node_sum = 0
    cdf_output = open("cdf_output.txt", "w")
    with open(filename, "r") as file:
        for line in file:
            columns = line.strip().split(" ")
            cur_count = int(columns[0])
            cross_node = int(columns[1])
            while cur_count > prev_count:
                cdf_output.write(str(prev_count) + " " + str(cross_node_sum + 4 + cross_node) + "\n")
                prev_count += 1
            #cross_node_sum += cross_node
    return


if __name__ == "__main__":
    # Check if the script was run with a filename argument
    if len(sys.argv) != 2:
        print(
            "Usage: python cdf.py <cdf_filename> "
        )
        sys.exit(1)

    cdf_filename = sys.argv[1]
    read_cdf(cdf_filename)
