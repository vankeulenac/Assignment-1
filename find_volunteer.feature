Feature: find volunteer in the database

In order to find a potential volunteer
As a member of a social organization
I want to select a student from the MOOC database

Scenario: empty search
Given no available students
When I search without specifying any search criteria
Then I should see: "No matching students found"


Scenario: see top ranked students available
Given the following student database
Name            |  Rank | 	Activity level 		 | Volunteering   
Alex Stevens 	|   2	|		8		 |	Yes
Claire Williams	|   3	|		10		 |	Yes
Fabio Santos	|   5	|		5	 	 |	No
John Snow	|   4	|		9	 	 |  	Yes
Steve Lee	|   1	|       	10               |  	No

		
When I search the following criteria 
Rank         | <= 3
Volunteering | Yes

Then the result should include Alex Stevens and Claire Williams


Scenario: see most active students
Given the following student database
Name            |  Rank | 	Activity level 		 | Volunteering   
Alex Stevens 	|   2	|		8	 	 |	Yes
Claire Williams	|   3	|		10	 	 |	Yes
Fabio Santos	|   5	|		5	 	 |	No
John Snow	|   4	|		9	 	 |   	Yes
Steve Lee	|   1	|       	10       	 |  	No 

When I search the following criteria
Activity level  | >=6
Volunteering    | Yes

Then the result should include Alex Stevens, Claire Williams and John Snow


Scenario: see all students interested in volunteering 
Given the following student database
Name            |  Rank | 	Activity level 		 | Volunteering   
Alex Stevens 	|   2	|		8		 |	Yes
Claire Williams	|   3	|		10		 |	Yes
Fabio Santos	|   5	|		5		 |	No
John Snow	|   4	|		9	 	 |      Yes
Steve Lee	|   1	|      		10       	 |      No 

When I search for the following criteria
Volunteering  | Yes

Then the result should include Alex Stevens, Claire Williams and John Snow


Scenario: contact student
Given that I chose students to apply for volunteering
When I want to be in touch with them
Then I click on "Send e-mail to <Student>"
