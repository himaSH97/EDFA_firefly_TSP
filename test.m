function minDis = test(data,popSize,numOfMoves,iterations,bestKnownSol)
  t0 = clock();
  a = [1:size(data,1)];
 % n = size(data,1);
  n =popSize;
  global D = data; %this is for explicit data
  %global D = createDisMatrix(data);
  genSol = genInSol(a,n);
  beta0=1;
  gamma=0.15; % ---------gamma is  light absorption coefficient
  u=1;
  m=numOfMoves;
  sol =[];
   %---------------------plotting------------------------------
  
  
  
  
  %-----------------------------------------------------------
  do
   for i = 1:n
     %mostAttractive = mostAtt(genSol,i,beta0,gamma);
     most_Attractive = mostAttractive(genSol,i,beta0,gamma);
      if(!isnull(most_Attractive))
        for j = 1:m
          temp = moveF(genSol(i,:),genSol(most_Attractive,:));
          sol = [sol;temp];
          %genSol = append(genSol,temp)
        endfor
       else
        for j = 1:m
        temp1 = moveRandom(genSol(i,:));
        sol = [sol;temp1];
        %genSol = append(genSol,temp1);
        endfor
      endif
   endfor
   bestFF = bestFireflies(sol,n);
   %bestFF = bestFireflies(genSol,n);
   genSol = newSols(sol,bestFF);
   %genSol = newSols(genSol,bestFF)
   Dis = totalDistances(genSol(1,:));
   %---------------------plotting------------------------------
  
  %plot(u,Dis,"-dk");
  %grid on;
 %hold on;
  
  %-----------------------------------------------------------
  
   u++;
 until (u==iterations)
 t = genSol;
 minDis = totalDistances(t(1,:))
 %minDis= sol
 %---------------------performance------------------------------
  %bestKnownSol = 3323;
  performance = (bestKnownSol/minDis)*100
  
  elapsed_time = etime(clock(),t0)
  
  %-----------------------------------------------------------
  endfunction
 