function x = totalDistances(v)%-----------this v is a row vector
  %------this gives only the trip distance to from first city to final city 
    global D;
    x=0;                
    
    sCity = v(1);
    eCity = v(end);
    for i = 1:(size(v,2)-1)
      a=v(1,i);
      b = v(1,i+1);
      x = x + D(a,b);
    endfor
     x = x + D(eCity,sCity);   %------ we need to add distance from final city to first city
  endfunction
  
 