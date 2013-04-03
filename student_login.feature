Feature: enroll in a MOOC

In order to learn online
As a student of this MOOC
I also have the option to choose a work experience as a volunteer or in a paid job.


Scenario: just study
Given I enroll in a MOOC
And my profile is complete
When I select "I only want to study"
And click on "Begin MOOC!"
Then I should see "Good luck with your studies!"
And I should see other MOOC options


Scenario: study and do volunteer work
Given I enroll in a MOOC
And my profile is complete 
When I want to study
And I select "I want to do volunteer work after the course"
And click on "Begin MOOC!"
Then my profile will be available to social organizations
And I should see: "Thank you for your help and effort! If you successfully complete the course, you might have the chance to work for a volunteer project"
And I should see other MOOC options


Scenario: study and look for a job
Given I enroll in a MOOC
And my profile is complete
When I want to study 
And I select "I want to look for a job after the course"
And click on "Begin MOOC!"
Then my profile will be available to headhunters
And I should see: "If you successfully complete the course, you might also have the chance to find a awesome job!" 
And I should see other MOOC options


Scenario: study, do volunteer work and look for a job
Given I enroll in a MOOC
And my profile is complete 
When 
When I select "I want to do volunteer work after the course"
And I select "I want to look for a job after the course"
And click on "Begin MOOC!"
Then my profile will be available to social organizations
And my profile will be available to headhunters
And I should see: "Thank you for your help and effort! If you successfully complete the course, you might have the chance to work for a volunteer project, get probono and even find a awesome job!"
 