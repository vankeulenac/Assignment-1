Feature 2 Student: work experience if complete a MOOC successfully 

In order to have a professional experience after the MOOC
As a student of this MOOC 
I can choose the best option for me


Scenario: no work experience
Given I complete a MOOC successfully
When I am not interested in a work experience
And I do not want to do volunteer work
Then I should see "I should see "Congralutions for completing this MOOC! Good luck with your future studies!"
And I should see other MOOC options to continue my studies


Scenario: join volunteer projects
Given I complete a MOOC sucessfully
When I want to join volunteer projects 
Then I should see "Congralutions for completing this MOOC!"
And I should see "You can now apply for the following volunteer projects bellow: " 
And I upload my CV



Scenario: look for a job
Given I complete a MOOC sucessfully
When I want to look for a job
Then I should see "Congralutions for completing this MOOC!"
And my profile will be available for headhunters
And I upload my CV


Scenario: volunteer work and job 
Given I complete a MOOC successfully
When I want to do volunteer work and find a job
Then I should see: "Congralutions for completing this MOOC!"
And I should see "You can now apply for the following volunteer projects bellow: " 
And my profile will be available for headhunters
And I upload my CV

