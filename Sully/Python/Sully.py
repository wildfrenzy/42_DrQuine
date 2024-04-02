import os

FILE_NAME = "Sully_%d.py"
RUN = "DEF=True python3 Sully_%d.py"
i: int = 5

decrease = os.getenv("DEF", False)
if decrease:
    i -= 1
if i < 0:
    exit(1)

quine: str = 'import os{0:c}{0:c}FILE_NAME = "Sully_%%d.py"{0:c}RUN = "DEF=True python3 Sully_%%d.py"{0:c}i: int = {1:d}{0:c}{0:c}decrease = os.getenv("DEF", False){0:c}if decrease:{0:c}    i -= 1{0:c}if i < 0:{0:c}    exit(1){0:c}{0:c}quine: str = %r{0:c}quine_copy = quine{0:c}quine = quine.format(10, i){0:c}quine = quine %% quine_copy{0:c}open(FILE_NAME %% i, "w").write(quine){0:c}os.system(RUN %% i)'
quine_copy = quine
quine = quine.format(10, i)
quine = quine % quine_copy
open(FILE_NAME % i, "w").write(quine)
os.system(RUN % i)