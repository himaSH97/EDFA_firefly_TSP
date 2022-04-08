function x = moveF(xi,xj)
  %------------xi and xj should be row vectors(a row vector is a firefly)----------------
  
  k= ceil(argDistance(xi,xj));
  if(k<2)
    lenOfMov=2;
  else
  lenOfMov = randi([2,k]);    %----------to get the length of movement---------
endif


  chromosomeIndex = randi([1,size(xi,2)]);     %----------randomly select a chromosome-------
  c = chromosomeIndex;
  l= lenOfMov;
  
  
  range = chromosomeIndex + lenOfMov; 
  %------------this executes when range is greater than the # of cities. so we need to take the vlues from choosen
  %------------chromosome to the end and rest from the begining
  if(range > size(xi,2))
    range = range - size(xi,2);
    temp = [xi(:,[chromosomeIndex:end]) , xi(:,[1:range]) ];
    %temp = temp(randperm(length(temp)));
    temp = fliplr(temp);
    v1 = temp(:,[1:range]);
    v2 = temp(:,[range+1:end]);
  
    xi(:,[1:range])= v1;
    xi(:,[chromosomeIndex:end]) = v2;
    x=xi;
    
    
  else
    temp = xi(:,[chromosomeIndex:range]);
    %temp = temp(randperm(length(temp)));
    temp = fliplr(temp);
 
    xi(:,[chromosomeIndex:range]) = temp;
    x=xi;
  endif
  
  
  
  
  
  
  
  
 
  
  endfunction