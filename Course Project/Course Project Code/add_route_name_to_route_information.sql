ALTER TABLE RouteInformation
ADD RouteName VARCHAR(10);
UPDATE RouteInformation
SET RouteName = CASE
 WHEN RouteID = 1 THEN 'Route A'
 WHEN RouteID = 2 THEN 'Route B'
 WHEN RouteID = 3 THEN 'Route C'
 WHEN RouteID = 4 THEN 'Route D'
 WHEN RouteID = 5 THEN 'Route E'
 WHEN RouteID = 6 THEN 'Route F'
 WHEN RouteID = 7 THEN 'Route G'
 WHEN RouteID = 8 THEN 'Route H'
 WHEN RouteID = 9 THEN 'Route I'
 WHEN RouteID = 10 THEN 'Route J'
 WHEN RouteID = 11 THEN 'Route K'
 WHEN RouteID = 12 THEN 'Route L'
 WHEN RouteID = 13 THEN 'Route M'
 WHEN RouteID = 14 THEN 'Route N'
 WHEN RouteID = 15 THEN 'Route O'
 WHEN RouteID = 16 THEN 'Route P'
 WHEN RouteID = 17 THEN 'Route Q'
 WHEN RouteID = 18 THEN 'Route R'
 WHEN RouteID = 19 THEN 'Route S'
 WHEN RouteID = 20 THEN 'Route T'
END;

