# ThreeOneOne Tracker

ThreeOneOne Tracker was created as a midterm project for a full stack development project at Red River College.

ThreeOneOne Tracker uses the Winnipeg Open Data Portal to pull call information from the 311 Calls dataset. The dataset is ingested into a sqllite database which is then used to display information to the user through tables and maps.

As it stands now, my database structure consists of a table for Service Requests, Service Areas, Wards, and Neighbourhoods, with a Calls table linking all of these together with geographic information for each one.

Later on I am hoping to possibly add other 311 call datasets from other years (or maybe other cities) and integrate those in as well.
As a bonus I am thinking of having a daily server job to pull only the new calls added to the dataset VIA the API and then add those to my sqllite database to keep the database up to date without having to reseed everyday. Or possibly moving away from the rails sqllite databases entirely and migrating the code to use a standalone database.

