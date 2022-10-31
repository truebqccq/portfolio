def parse_input(input_line: str, input_type: list) -> tuple:
    'Parses input lines from leetcode, more types to be added soon'
    input_list = []
    for s in input_line.split('/'):
        try:
            ind = s.index('=')+2
        except ValueError:
            ind = 0
        input_list.append(s[ind:])
    everything = []

    for i in range(len(input_type)):
        t = input_type[i].upper()
        if t == 'S':
            everything.append(_parse_string(input_list[i]))
        elif t == 'I':
            everything.append(_parse_int(input_list[i]))
        elif t == 'F':
            everything.append(_parse_float(input_list[i]))
        elif t == 'B':
            everything.append(_parse_bool(input_list[i]))
        elif t == 'LS':
            everything.append(_parse_str_list(input_list[i]))
        elif t == 'LI':
            everything.append(_parse_int_list(input_list[i]))
        elif t == 'LLI':
            everything.append(_parse_int_list_list(input_list[i]))
    return tuple(everything)

def read_file_input() -> list[list[int]]:
    '''Reads input from the file, returns a matrix of integers'''
    input_file = open('.\\Project Euler\\input.txt', 'r')
    nums = []
    for line in input_file:
        nums.append(list(int(n) for n in line.split(' ')))
    input_file.close()
    return nums

def _parse_string(line: str):
    return line[1:-1]

def _parse_int(line: str):
    return int(line)

def _parse_float(line: str):
    return float(line)

def _parse_bool(line: str):
    return line.upper() == 'TRUE'

def _parse_str_list(line: str):
    return list(s[1:-1] for s in line[1:-1].split(','))

def _parse_int_list(line: str):
    return list(int(n) for n in line[1:-1].split(','))

def _parse_int_list_list(line: str):
    return list(_parse_int_list('['+n+']') for n in line[2:-2].split('],['))