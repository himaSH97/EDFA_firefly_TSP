function v = append(x,y) %----------- this append y row to x matrix
  x(end+1,:)= y;
  v=x;
  endfunction