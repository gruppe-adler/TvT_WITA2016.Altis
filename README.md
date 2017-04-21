# Where is the Agent? (WIP)

## Mission Config

Attribute                    | Explanation
----------------------------|------------------------------------------------------------------------------------------------------------------------------------
locationDistance            | How far away from a location will INDEP spawn? (minimum, maximum)
heliDistance                | How far away from INDEP start position will the crashed helicopter spawn? (minimum, maximum)
locationTypeWeight          | How likely is it, that INDEP will start near this location type. (number 0-1, sum does not have to be 1)
bluforSpawnDistanceVariance | How much does BLUFOR spawn distance to INDEP vary?
bluforBaseAreaSize          | Radius around BLUFOR start position that is considered part of their base.
bluforSpawnDistances        | How far away from INDEP does BLUFOR start? Values correspond with (close,normal,far) mission parameters,
agentMarkerInterval         | How often will agents be tracked?
agentMarkerVariance         | How inaccurate will agent markers be?
agentMarkerFadeout          | How long will agent markers be visible?
agentMarkerIntervalBase     | How often will agents be tracked if they are inside BLUFOR's base area?
agentMarkerVarianceBase     | How inaccurate will their markers be while inside BLUFOR's base area?
agentMarkerFadeoutBase      | How long will their markers be visible while inside BLUFOR's base area?
indepStartVehicles          | Classnames of all starting vehicles for INDEP. Picked at random.

### civVehicles

Attribute               | Explanation
------------------------|-----------------------------------------------------------------------------------------------
carLocationAmountFactor | Factor for car amount in locations. Higher means more.
carLocationMinDist      | Minimum distance that cars in locations have to have to each other.
carRoadAmountFactor     | Factor for car amount outside of locations. Higher means more.
carRoadMinDist          | Minimum distance that cars outside of locations have to have to each other.
carType                 | Classnames of all civilian cars that can spawn.
heliAirportAmountFactor | Factor for helicopter amount on airports. Higher means more.
heliFuelFixValue        | What min. value does the fuel of an Air type vehicle get set to, when an INDEP player gets in?
heliTypes               | Classnames of all helicopters that can spawn.
boatCoastAmountFactor   | Factor for boat amount on the coast. Higher means more.
boatTypes               | Classnames of all boats that can spawn.
