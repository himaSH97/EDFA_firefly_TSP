function k = argDistance(a,b)%--------- a and b are two fireflies----------
  
  len = size(a,2); % to get the length of input vectors 
  arcs=0;
  
  for (i = 1:(len-1)),
    if(a(i)!= b(i) && a(i+1)!= b(i+1)),
      arcs++;  
    endif
  endfor
  
  A = arcs;
  arcDis = (A/len)*10;     %--------------------to get the arc distance -------------------
  k = arcDis;
  
endfunction


