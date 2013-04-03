Feature: find future employee

In order to find a qualified and motivated employee
As a headhunter
I want to select a student from the MOOC database


Scenario: empty search
Given no available students
When I search without specifying any search criteria
Then I should see: "No matching students found"


Scenario: see top ranked students
Given the following student database
Name            |  Rank | Activity level |  Work   
Alex Stevens 	  |   2	  |		  8		       |	No
Claire Williams	|   3 	|	  	10		     |	Yes
Fabio Santos	  |   5	  |		  5		       |	Yes
John Snow		    |   4	  |		  9	 	       |  Yes
Steve Lee		    |   1	  |     10         |  Yes

When I search for the following criteria 
Rank  | <= 3
Work  | Yes

Then the result should include Claire Williams and Steve Lee


Scenario: see most active and top students  
Given the following student database
Name            |  Rank | Activity level |  Work   
Alex Stevens 	  |   2	  |	  	8	 	       |	No
Claire Williams	|   3	  |		  10	       |	Yes
Fabio Santos  	|   5	  |		  5	         |	Yes
John Snow	      |   4	  |		  9	         |  Yes
Steve Lee	      |   1	  |     10         |  Yes

When I search the following criteria
Rank            |  <=3
Activity level  |  >=6
Work 		    |  Yes

Then the result should include Claire Williams, John Snow and Steve Lee


Scenario: see all students interested in finding a job
Given the following student database
Name            |  Rank | Activity level |  Work   
Alex Stevens 	  |   2	  |	  	8	 	       |	No
Claire Williams	|   3	  |	  	10	 	     |	Yes
Fabio Santos	  |   5	  |		  5	 	       |	Yes
John Snow		    |   4 	|		  9	 	       |  Yes
Steve Lee		    |   1	  |     10         |  Yes

When I search the following criteria
Work  |  Yes

Then the result should include Claire Williams, Fabio Santos, Steve Lee and John Snow 


Scenario: contact students
Given that I chose best students to apply for a job in my company
When I want to be in touch with them
Then I click on "Send e-mail to <Student>"
