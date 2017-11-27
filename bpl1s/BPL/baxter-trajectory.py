import matlab.engine
#import StringIO

eng = matlab.engine.start_matlab()

eng.eval('addpath(genpath(pwd))')
#out = StringIO.StringIO()
#err = StringIO.StringIO()
eng.demo_fit_test(nargout=0) #stdout=out, stderr=err)

stroke = np.array(eng.eval('G.models{1}.S{1}.motor{1}'))

#tf = eng.isprime(37)

#eng.addpath('../../python')
#eng.triarea(nargout=0)
#print tf
