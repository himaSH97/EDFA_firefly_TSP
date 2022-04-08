% in here we check how many trails it take to get 92% performance i each n=5,10,15,20,25
function t = trails4n(data)
  n =[5,10,15,20,25];
  
  t=[];
  bestKnownSol = 6859;
  
  for i=n 
    trails=0;
    performance=0;
    do
     i 
    minDis=fireflyAlgorithm(data,i,15,10,0.15,6859);
    performance = (bestKnownSol/minDis)*100;
    trails++
    until(performance>92)
    t =[t,trails]
  endfor
  plot(n,t,'-o')
  %title ("");
  xlabel ("population size");
  ylabel ("number of iterations for 92% accuracy");
  endfunction