import sys, os
import subprocess
from logic import *

from parser import parse


if sys.argv[1] is None:
    raise Exception("No input file specified")


filepath = os.getcwd()

files_folder = os.path.dirname(os.path.abspath(__file__)) + "/files/"

file = files_folder + sys.argv[1]

assumptions, guarantees, ins, outs = parse(file)


args = ("./strix", Implies(assumptions, guarantees), "--ins=", ins, "--outs=", outs)
popen = subprocess.Popen(args, stdout=subprocess.PIPE)
popen.wait()
output = popen.stdout.read()
print(output)
