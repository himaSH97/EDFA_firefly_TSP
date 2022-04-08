function x = attractiveness(arcDistance,beta0,gamma) 
  x= beta0*exp(-gamma*arcDistance.^2);
%---------this function returns the attractivenes to a given two fireflies arcDistences
endfunction