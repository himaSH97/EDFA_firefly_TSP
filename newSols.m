function new = newSols(m,bestFF) % m is previous genSol,      bestff is fireflies
  
  new = m(bestFF(1,1),:);
  for i = 2:size(bestFF,2)
    new= append(new,m(bestFF(1,i),:));
  endfor
  endfunction