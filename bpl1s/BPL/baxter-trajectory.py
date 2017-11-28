import matlab.engine
#import StringIO

eng = matlab.engine.start_matlab()

eng.eval('addpath(genpath(pwd))')
#out = StringIO.StringIO()
#err = StringIO.StringIO()
eng.demo_fit_test(nargout=0) #stdout=out, stderr=err)

# This is an array of lists of matlab.object objects
strokes = np.array(eng.eval('G.models{1}.motor'))
pyStrokes = []
for i in range(len(strokes)):
  thisStroke = []
  s = strokes[i]
  for j in range(len(s)):
    thisStroke.append(np.array(s[j]))
  pyStrokes.append(thisStroke)



#tf = eng.isprime(37)

#eng.addpath('../../python')
#eng.triarea(nargout=0)
#print tf
