# 🚍 oasaTelematicsDevKit
## OASA Telematics API wrapper witten in swift 👨🏻‍💻

Based of the official [script](http://telematics.oasa.gr/js/script.js)** and helped by the [documentation](https://oasa-telematics-api.readthedocs.io/en/latest/index.html) of it
The Base Url is 🔗 'http://telematics.oasa.gr/api/?act=action&p1=parameter1&p2=parameter2'

# Below Are the Methods implementantion status 
## 🚌 Base Api Endpoints

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

## 🌐 Web Api Endpoints

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


## ❌ Endpoints with null response (Probably Deprecated)

| Function                          | Status           | Notes                                |
|----------------------------------|------------------|--------------------------------------|
| `getEsavlDirections`             | NULL response    | Possibly deprecated                  |
| `getLinesAndRoutesForMlandLCode` | NULL response    | May need valid line + ML code        |
| `getPlaces`                      | NULL response    | Possibly geolocation-dependent       |
| `getPlacesTypes`                 | NULL response    | Possibly unused in production        |

## 🚀 Future Improvements

In the future, I would like to streamline the process of interacting with the OASA Telematics API by introducing a layer of abstraction. This includes:

- Creating **wrapper classes** for each major API group (e.g., routes, stops, lines), which will encapsulate raw API calls and simplify usage.
- Designing a more **modular and abstracted architecture** to reduce redundancy and improve maintainability.
- Enhancing **error handling and response parsing** to make the SDK more robust and developer-friendly.

These improvements aim to make the codebase cleaner, easier to extend, and more intuitive for external developers to use.

**Made because the official app is BAD by [no_cash_george](https://github.com/no-cash-george)**

