#  one comment
NEWLINE = '\n'
FILE_NAME = 'Grace_kid.py'

def myquine() -> None:
    file = open(FILE_NAME, 'w')
    quine: str = "#  one comment{0:s}NEWLINE = '\\n'{0:s}FILE_NAME = 'Grace_kid.py'{0:s}{0:s}def myquine() -> None:{0:s}    file = open(FILE_NAME, 'w'){0:s}    quine: str = %r{0:s}    quine_copy = quine{0:s}    quine = quine.format(NEWLINE){0:s}    quine = quine %% quine_copy{0:s}    file.write(quine){0:s}{0:s}RUN = myquine(){0:s}{0:s}RUN"
    quine_copy = quine
    quine = quine.format(NEWLINE)
    quine = quine % quine_copy
    file.write(quine)

RUN = myquine()

RUN