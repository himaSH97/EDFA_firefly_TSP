function t = trails4m(data)
  m = [5:20];
  t=[];
  bestKnownSol = 6859;
  
  for i=m 
    trails=0;
    performance=0;
    do
     i 
    minDis=fireflyAlgorithm(data,20,i,10,0.15,6859);
    performance = (bestKnownSol/minDis)*100;
    trails++
    until(performance>92)
    t =[t,trails]
  endfor
  plot(m,t,'-o')
  %title ("");
  xlabel ("numberof moves");
  ylabel ("number of iterations for 92% accuracy");
endfunction