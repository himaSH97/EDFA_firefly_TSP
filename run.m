function r = run(data,popSize,numOfMoves,iterations,lightObsobtion,bestKnownSol,numOfRuns) % give sthe accuracy vector for k1 number of runs
  r =[];
  k=numOfRuns;
  for i = 1:k
    minDis = fireflyAlgorithm(data,popSize,numOfMoves,iterations,lightObsobtion,bestKnownSol)
    accuracy = (bestKnownSol/minDis)*100
    r = [r , accuracy]
  endfor
  maxAccuracy= max(r)
  minAccuracy=min(r)
  endfunction