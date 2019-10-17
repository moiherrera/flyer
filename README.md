FLYER
See the events happening in your city, right now.
A platform to view flyers of events happening in your city. Post your own flyers if you’d like!
This apps allows users to view flyers to events they may potentially attend. It also allows them to upload their own flyers to advertise their events.

Back-End Repo: https://github.com/moiherrera/flyer
Back-End Deployed: https://arcane-ocean-83657.herokuapp.com/
Front-End Repo: https://github.com/moiherrera/flyer-client
Front-End Deployed: https://moiherrera.github.io/flyer-client/

Technologies Used:
Express API
MongoDB
Mongoose
Git - Versin Control
Heroku
Github
MLab

Stretch Goals for Future Versions:
Admin Account - An Account where I can delete content that doesn’t meet the requirement of what a flyer is supposed to be.
Walkthrough Expansive - A series of messages before the user enters the site that will allow them to understand the function of the application before they enter.
Mobile Accessibility - Adapt the application for mobile users, provide a swiping interface.
Styling - Provide a Fun and Artsy Background and Styling.
Horizotal Scroll - Implement Horizontal Scroll for Web
Location Based Services - Only flyers posted within the proximity of the user will be accessible to view. Integrate Map API/Location Services API.

Strategy & Process:

The Goal for this project was to create an application where a user can view multiple flyers
that could potentially motivate them to attend an event nearby.
Each User is able to create their own flyer, update it, or delete it.
Each User can also retrieve all flyers whether they are signed in or not.
Therefore, the strategy was to create to resources users and flyers.
Users will have a one-to-many relationship with flyers.

Step 1: Create a flyer modal/resource

Began building back-end by creating a model for the flyer resource.
Adding user ownership by adding property object "owner" and requiring it.





Users must be able to Get all Flyers, they must be able to Update their flyers,
and they must be able to Delete their flyers.

Step 2: Create Resource routes
Create GET route
Create POST route
Create PATCH route
Create DELETE route

Require Ownership for POST, PATCH, & DELETE routes.

Step 3: Make sure server has acces to routes.
Import flyerRoutes to server.js
use flyerRoutes.

Step 4. Testing

Create curl-scripts for all actions to test them before developing front-end.
Run curl-scripts in terminal to create users and resources.


Link to ERD:
https://docs.google.com/document/d/1jq8GdOTGVQFqBFCDCPHij3pEt9cZ4XVZhmmZwr1AhpM/edit?usp=sharing

Catalog of Routes:

router.post - '/sign-up'
router.post - '/sign-in'
router.patch - '/change-password'
router.delete - '/sign-out'
router.get - '/flyers'
router.post - '/flyers'
router.patch - '/flyers/:id', requireToken
router.delete - '/flyers/:id'

Set Up:
1. Download express-api template: https://git.generalassemb.ly/ga-wdi-boston/express-api-template
2. Unzip file
3. Rename file
4. Empty ReadMe and change name in package json.
5. initiate git repository
6. npm install
7. install nodemon and run it
8. to test: npm run server

Set up for Production:
For this project, I used Heroku to connect with my API and used MongoDB Database.

0. create heroku site and research how to begin using heroku
1. run heroku create
2. commit to local branch
3. run git push heroku master
4. create MongoDB database, run  heroku addons:create mongolab:sandbox
5. Determine two essential config variables CLIENT_ORIGIN & MONGODB_URL
6. start heroku
