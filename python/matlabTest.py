import matlab.engine
eng = matlab.engine.start_matlab()
#tf = eng.isprime(37)
eng.triarea(nargout=0)
#print(tf)
