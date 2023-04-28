# Project 1 - Astronomy Catalouge

## Website Purpose

On the Astronomy Catalouge, amateur astronomers can add to a growing database of astronomical objects that they have observed or simply have an interest in.

Users can search the catalogue for objects already in the database, bookmark objects, and view all objects they have added.

## Technologies Used:

-   Ruby on Rails
-   Bcrypt - password encryption
-   Will Paginate - paginates pages on index views
-   Cloudinary - image upload
-   Bootstrap & CSS
-   NASA Picture of the Day API
-   Heroku - Deployment (https://astronomy-catalogue.herokuapp.com/)

## Website Features

-   Users can create an account with a bcrypt encrpted password. The database stores a username, email, and hashed password.
-   An 'About' page featuring the picture of the day from NASA's API along with the picture's explanation.
-   Users can view all entries in the the Astronomical Catalouge. This page is paginated to 10 reuslts per page.
-   Users can search for an entry in the the Astronomical Catalouge using the nav bar's search field. Users can search by an Object's Name, Category, or Author.
-   Users can add an entry to the catalouge by adding data to 4 input areas: Name, Category, Summary, and an image upload box.
-   Users can view all entries they have made to the catalouge. A user's entries can be viewed in the User's 'My Objects' tab
-   Users can bookmark any entry in the catalouge. Bookmarks can be viewed in the User's 'My Bookmarks' tab.
-   Users can comment on items in the catalouge.

Known issues:

-   The comments are currently not appended to the page dynamically. The comment controller redirects the user to the page which in turn refreshes the page showing the user's new comment (the bookmark button DOES change dynamically).
