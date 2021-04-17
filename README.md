
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
* User can choose type of park or facility 
(roller rinks, basketball courts, tennis courts, soccer fields, etc.)
*  User can view park locations nearby on a map
*  User can view general information on a specific park

**Optional Nice-to-have Stories**

* User can login/logout
* User can save parks to favorites
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

 **Optional Screens** 
 
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
<img src="https://i.imgur.com/mRcKUdw.jpg" width=600>


### [BONUS] Digital Wireframes & Mockups

![](https://i.imgur.com/qIgMQgH.png)

![](https://i.imgur.com/pdro7WO.png)

![](https://i.imgur.com/lzgUIZx.png)


### [BONUS] Interactive Prototype

<img src='http://g.recordit.co/7G7ZoNK7KU.gif' title='Interactive Prototype' alt='Interactive Prototype'/>

## Schema 
### Models

### Networking
- [Add list of network requests by screen ]
- Map View Screen
    - (Read/GET) Query all parks
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
