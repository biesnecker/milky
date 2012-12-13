Milky
=====

Calculates the upper and lower bounds for infant formula consumption per feeding (based on 2 to 2.5 fluid ounces per pound of body weight per day).

Usage: ./milky weight interval 

Weight should be in kilograms, and interval is the number of hours between feedings. The result will be the upper and lower bounds, in milliliters.

Example: 

./milky 3.4 3   <--- calculate for a 3.4kg baby being fed every three hours

TODO: Support for imperial units.
