function x = geoLocation(data)
  PI = 3.141592;
  deg = round( data(:,2) );
  min = data(:,2) - deg;
  latitude = PI * (deg + 5.0 * min ./ 3.0 ) ./ 180.0;
  
  deg = round( data(:,3) );
  min = data(:,3) - deg;
  longitude =  PI * (deg + 5.0 * min ./ 3.0 ) ./ 180.0;
  
  data(:,2)=latitude;
  data(:,3)=longitude;
  x=data;
  endfunction