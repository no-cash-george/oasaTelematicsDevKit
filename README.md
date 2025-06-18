# oasaTelematicsDevKit
## OASA Telematics API wrapper witten in swift

The Base Url is 'http://telematics.oasa.gr/api/?act=action&p1=parameter1&p2=parameter2'

Below Are the Methods implementantion status 

* getStopArrivals DONE
* getBusLocation DONE
* getDailySchedule DONE
* getEsavlDirections NULL API RESPONCE
* getScheduleDaysMasterline DONE
* getLinesAndRoutesForMl DONE
* getRoutesForLine DONE
* getMLName DONE
* getLineName DONE 
* getLinesAndRoutesForMlandLCode NULL RESPONSE
* getPlaces NULL RESPONSE 
* getPlacesTypes NULL RESPONSE 
* getRouteName DONE
* getStopNameAndXY DONE
* getSchedLines DONE
* getClosestStops DONE
* webGetLines DONE
* webGetLinesWithMLInfo DONE
* webGetRoutes DONE
* webGetStops DONE
* webRouteDetails DONE
* webRoutesForStop DONE
* webGetRoutesDetailsAndStops DONE
* webGetLangs DONE
* webGetMasterLines DONE

| Function                       | Description                      | Link/Call Example                                      |
|-------------------------------|----------------------------------|--------------------------------------------------------|
| `getStopArrivals`             | Get arrivals for a stop          | `act=getStopArrivals&stopCode=...`                    |
| `getBusLocation`              | Get current bus position         | `act=getBusLocation&routeCode=...`                    |
| `getDailySchedule`            | Get daily route schedule         | `act=getDailyRouteSchedule&routeCode=...&date=...`    |
| `getScheduleDaysMasterline`   | Schedule days per masterline     | `act=getScheduleDaysMasterline&ml=...`                |
| `getLinesAndRoutesForMl`      | Routes for masterline            | `act=getLinesAndRoutesForMl&ml=...`                   |
| `getRoutesForLine`            | Routes for a line                | `act=getRoutesForLine&lineCode=...`                   |
| `getMLName`                   | Name for a masterline            | `act=getMLName&ml=...`                                |
| `getLineName`                 | Name for a line                  | `act=getLineName&lineCode=...`                        |
| `getRouteName`                | Name for a route                 | `act=getRouteName&routeCode=...`                      |
| `getStopNameAndXY`            | Stop name and coordinates        | `act=getStopNameAndXY&stopCode=...`                   |
| `getSchedLines`               | Scheduled lines                  | `act=getSchedLines`                                   |
| `getClosestStops`             | Nearby stops                     | `act=getClosestStops&x=...&y=...`                     |

| Function                        | Description                      | Link/Call Example                                    |
|--------------------------------|----------------------------------|------------------------------------------------------|
| `webGetLines`                  | All lines                        | `act=webGetLines`                                   |
| `webGetLinesWithMLInfo`        | Lines with masterline info       | `act=webGetLinesWithMLInfo`                         |
| `webGetRoutes`                 | All routes                       | `act=webGetRoutes&lineCode=...`                     |
| `webGetStops`                  | Stops for a route                | `act=webGetStops&routeCode=...`                     |
| `webRouteDetails`              | Detailed route info              | `act=webRouteDetails&routeCode=...`                 |
| `webRoutesForStop`             | Routes passing through a stop    | `act=webRoutesForStop&stopCode=...`                 |
| `webGetRoutesDetailsAndStops`  | Route & stop details             | `act=webGetRoutesDetailsAndStops&lineCode=...`      |
| `webGetLangs`                  | Languages supported              | `act=webGetLangs`                                   |
| `webGetMasterLines`            | Masterlines                      | `act=webGetMasterLines`                             |

| Function                          | Status           | Notes                                |
|----------------------------------|------------------|--------------------------------------|
| `getEsavlDirections`             | NULL response    | Possibly deprecated                  |
| `getLinesAndRoutesForMlandLCode` | NULL response    | May need valid line + ML code        |
| `getPlaces`                      | NULL response    | Possibly geolocation-dependent       |
| `getPlacesTypes`                 | NULL response    | Possibly unused in production        |
