
# ParkSleuth

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
  ParkSleuth is a mobile app that allows users to locate skate parks within the area. It also provides general information on the parks.

### App Evaluation

- **Category:** Navigation/Utilities/Sports
- **Mobile:** The app will be primarily developed for mobile use for on-the-go information lookup.
- **Story:** Allows users to exlpore and quickly locate parks and other athletic facilities in their vicinity.
- **Market:** The app is useful for anyone who enjoys park-related sports and activities.
- **Habit:** This app could be used as often as one would like to find information about parks in their vicinity. Additional features like a favorites screen would boost habit-forming tendencies.
- **Scope:** High potential for growth with the possibility to expand the search feature for park facilities to include dog parks, pools, fitness equipment, bathrooms, barbecuing areas, wi-fi etc. Could also be expanded to a wider radius outside NYC.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
- [x] User can choose type of park or facility 
(roller rinks, basketball courts, tennis courts, soccer fields, etc.)
- [ ] User can view park locations nearby on a map
- [ ] User can view general information on a specific park
- [X] User can create an account
- [X] User can login/logout
- [ ] User can save parks to favorites

**Optional Nice-to-have Stories**

* User can sort favorited parks by most recently added or by rating
* User can view most popular/highest-rated parks in their area

### 2. Screen Archetypes

* Launch Screen
    * Displays app logo while app is loading
    
* Map View 
   * User can zoom in, zoom out, pan on map
   * User can view all skate parks within the area
   * User can click on a specific park
 
* Categories View
    * User can select type of park or athletic facility


* Park Detail View
   * Displays general information about the park
        * Name
        * Address
        * Photos
        * Hours
        * Rating 
        * Popular times 
 * Login 
     * User can login using google account
 * Favorites
     * User can view list of saved locations
     * User can go to detail view of selected location
 * Settings
     * User can logout
     * User can toggle between view all parks or view selected category

    

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Map
* Categories
* Favorites

**Flow Navigation** (Screen to Screen)

* Login Screen
   * Map View
* Categories View
   * Map View
* Map View
   * Park Detail View
* Favorites View
   * Park Detail View
* Settings View
   * Login Screen
   * Previous Screen

## Wireframes

![](https://i.imgur.com/qIgMQgH.png)

![](https://i.imgur.com/pdro7WO.png)

![](https://i.imgur.com/lzgUIZx.png)


### [BONUS] Interactive Prototype

<img src='http://g.recordit.co/7G7ZoNK7KU.gif' title='Interactive Prototype' alt='Interactive Prototype'/>

## Schema 
### Models
Park
<table style="width:100%">
  <tr>
    <th>Property</th>
    <th>Type</th> 
    <th>Description</th>
  </tr>  
  <tr>
      <td>parkId</td>
      <td>String</td>
      <td>unique id for the park</td>
  </tr>
  <tr>
    <td>parkName</td>
    <td>String</td> 
    <td>name of park</td>
  </tr> 
  <tr>
    <td>parkType</td>
    <td>String</td> 
    <td>type of park</td>
  </tr> 
  <tr>
    <td>image</td>
    <td>File</td> 
    <td>photo(s) of park </td>
  </tr> 
  <tr>
    <td>location</td>
    <td>Number</td> 
    <td>geographical coordinates: latitude and longitude from -180 to 180 degrees</td>
  </tr>  
  <tr>
    <td>address</td>
    <td>String</td> 
    <td>address of the park</td>
  </tr> 
  <tr>
    <td>hoursOpen</td>
    <td>Number</td> 
    <td>times during which the park is open</td>
  </tr>  
  <tr>
      <td>daysOpen</td>
      <td>String</td>
      <td>days when the park is open</td>
  </tr>
  <tr>
    <td>popularTime</td>
    <td>Number</td> 
    <td>time when the park is busiest</td>
  </tr> 
  <tr>
      <td>popularDays</td>
      <td>String</td>
      <td>day when the park is busiest</td>
  </tr> 
  <tr>
    <td>rating</td>
    <td>Number</td> 
    <td>park rating</td>
  </tr> 
   <tr>
    <td>favorite</td>
    <td>Bool</td> 
    <td>whether or not the park is saved</td>
  </tr>
</table>

Map
<table style="width:100%">
  <tr>
    <th>Property</th>
    <th>Type</th> 
    <th>Description</th>
  </tr>
  <tr>
    <td>mapTypeId</td>
    <td>string</td> 
    <td>Map type</td>
  </tr>
  <tr>
    <td>zoom</td>
    <td>Number</td> 
    <td>Zooming in and out</td>
  </tr>
  <tr>
    <td>bounds</td>
    <td>Number</td> 
    <td>the bounds to which query predictions are biased</td>
  </tr> 
  <tr>
    <td>parkId</td>
    <td>String</td> 
    <td>unique id of park</td>
  </tr>   
  <tr>
</table>


User
<table style="width:100%">
  <tr>
    <th>Property</th>
    <th>Type</th> 
    <th>Description</th>
</tr>
  <tr>
    <td>firstName</td>
    <td>String</td> 
    <td>user's first name</td>
  </tr>
  <tr>
    <td>lastName</td>
    <td>String</td> 
    <td>user's last name</td>
  </tr>
  <tr>
    <td>userId</td>
    <td>String</td> 
    <td>username</td>
  </tr>
  <tr>
      <td>profile</td>
      <td>File</td>
      <td>user's profile image</td>
  </tr>
  <tr>
    <td>email</td>
    <td>String</td> 
    <td>user's email</td>
  </tr>
  <tr>
    <td>password</td>
    <td>String</td> 
    <td>user's hashed password</td>
  </tr>
</table>

Favorites
<table style="width:100%">
    <tr>
        <th>Property</th>
        <th>Type</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>parkId</td>
        <td>String</td>
        <td>unique id of park</td>
    </tr>
    <tr>
        <td>parkName</td>
        <td>String</td>
        <td>name of park</td>
    </tr>
</table>

### Networking
- Login Screen
    - (POST) Create user account
    - (GET)  Authenticate user credentials
- Map View 
    - (GET) Query all corresponding parks in vicinity 
    - (GET) Zooming in and out 
    
- Park Details View Screen 
    - (GET) Query name, address, photos, hours, rating, popular times of specific park
    - (PUT) Favorite a location

 - Favorites View
   - (Get) Query parkId of saved park
   - (DELETE) Delete saved park
   
- Settings View
   - (GET) Query logged in user's info
   - (PUT) change username, password, email, name, profile image
   - (DELETE) Delete user account


![](https://i.imgur.com/XIcD48m.png)
