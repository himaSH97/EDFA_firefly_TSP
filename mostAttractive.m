function m = mostAttractive(genSolMatrix,fireflyWeNeedToCheck,beta0,gamma)
  att=0;
  F = 0;
  
  for i =1: size(genSolMatrix,1)
    if(i != fireflyWeNeedToCheck )
      r = argDistance(genSolMatrix(fireflyWeNeedToCheck,:),genSolMatrix(i,:));
      a = attractiveness(r,beta0,gamma);
      if(a >= att)
        att = a;
        F = i;
      else
        F = F;
      endif
    else
      F=F;
    endif
  endfor
 
 m = F;
 
 endfunction 