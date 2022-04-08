function v =createDisMatrix(a)
  for j = 1:size(a,1)
    for i = 1:size(a,1)
      v(j,i)= euclideanDistance(a(j,2),a(j,3),a(i,2),a(i,3));
    endfor
  endfor
  
  endfunction