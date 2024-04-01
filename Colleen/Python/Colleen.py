quine: str = 'quine: str = %r%cprint(quine %% (quine, 10))'
print(quine % (quine, 10))
