function t = trails4i(data)
  n =[5,10,15,20];
  
  t=[];
  bestKnownSol = 6859;
  
  for i=n 
    trails=0;
    performance=0;
    do
     i 
    minDis=fireflyAlgorithm(data,10,17,i,0.15,6859);
    performance = (bestKnownSol/minDis)*100;
    trails++
    until(performance>92)
    t =[t,trails]
  endfor
  plot(n,t,'-o')
  %title ("");
  xlabel ("iteration number");
  ylabel ("number of trails for 92% accuracy");
  endfunction