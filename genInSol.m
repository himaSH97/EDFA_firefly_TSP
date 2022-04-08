function v = genInSol(iniSol,numFireflies) 
  %----------------For generate initial solutions--------------
  for i= 1:numFireflies
    x=shuffle(iniSol);
    v(i,:)=x; 
  endfor
endfunction



%--------------this creates firefly number we need as a matrix where each row is a initial solution----------