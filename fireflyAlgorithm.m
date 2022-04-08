function minDis = fireflyAlgorithm(data,popSize,numOfMoves,iterations,lightObsobtion,bestKnownSol)
  t0 = clock();
  a = [1:size(data,1)];  %----------a is the initial solution-------------
  n =popSize;
  global D = data; %--------------------------this is for explicit data---------------
  genSol = genInSol(a,n);
  beta0=1;
  gamma=lightObsobtion; % ---------gamma is  light absorption coefficient-----------
  u=1;
  m=numOfMoves;
  sol =[];
  
  do
   for i = 1:n 
     most_Attractive = mostAttractive(genSol,i,beta0,gamma);
      if(!isnull(most_Attractive))
        for j = 1:m
          temp = moveF(genSol(i,:),genSol(most_Attractive,:));
          sol = [sol;temp];
        endfor
       else
        for j = 1:m
        temp1 = moveRandom(genSol(i,:));
        sol = [sol;temp1];
        endfor
      endif
   endfor
   bestFF = bestFireflies(sol,n);
   genSol = newSols(sol,bestFF);      %------------ creating population for next iteration-------
   Dis = totalDistances(genSol(1,:));
   u++;
 until (u==iterations)
 t = genSol;
 minDis = totalDistances(t(1,:))
 
 %---------------------performance------------------------------
 
  performance = (bestKnownSol/minDis)*100
  elapsed_time = etime(clock(),t0)
  
  %-----------------------------------------------------------
  endfunction
 