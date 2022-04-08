function fireflies = bestFireflies(v,n) %---- v is the new sol matrix ,n is fireflies u need ---------

  for i =1:size(v,1)
    x(i,1)=i;
    x(i,2)=totalDistances(v(i,:));
  endfor
  
 
  b = sortrows(x,2);
  fireflies = b(:,1);
  fireflies = fireflies(1:n,1);
  fireflies = fireflies';          
  
  %------------this function returns best fireflies for a solution matrix of size m*n------------

  
  
  
  endfunction