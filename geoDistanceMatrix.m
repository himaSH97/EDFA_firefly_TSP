function x = geoDistanceMatrix(data)
  RRR = 6378.388;
  for j = 1:(size(data,1))
    for i = 1:(size(data,1))
      if (j==i)
        x(j,i)=0;
      else
        q1 = cos( data(j,3) - data(i,3) );
      q2 = cos( data(j,2) - data(i,2) );
      q3 = cos( data(j,2) + data(i,2) );
      x(j,i) =  ( RRR * acos( 0.5*((1.0+q1)*q2 - (1.0-q1)*q3) ) + 1.0);
      endif
      
      
    endfor
  endfor
  
  
  
  endfunction