lets psuedocode baby!


Ask a user to sign in or sign up to use the site. 
	- need to follow the layout from the lesson
Need to add password



Each show needs to be separate and be a link to a separate page by the show's id. **add show photo if there is time****
	-on that page i need to have the comments section
		- comments should be sorted by popularity(maybe # of likes.)
	-also need the links section
		-links will tell user if they need a subscription to view

Need to have an average user rating. 
	-The shows should be sorted by user rating on the homepage. Should be fairly simple. There needs to be an input box for a new rating, when that happens the new rating needs to added to the other ratings the show has been given and divided by the total number of ratings. 

	-Client.average("orders_count")- found that in the active record docs. 

	-I think i may need a seperate table for avg. rating. 
		-avg rating will need a tv_show_id, so the user will know what tv show it belongs to


checklist:

-avg. user rating
-first show not working
-css styling
-random button