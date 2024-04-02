#  outside of my program
def myquine() -> None:
    quine: str = "#  outside of my program%cdef myquine() -> None:%c    quine: str = %r%c    print(quine %% (10, 10, quine, 10, 10, 10, 10))%cif __name__ == '__main__':%c    # in main%c    myquine()"
    print(quine % (10, 10, quine, 10, 10, 10, 10))
if __name__ == '__main__':
    # in main
    myquine()
