Feature: Create Category
  As an author
  In order to categorize my articles
  I want to create new categories

Background: Setup Blog and login as admin
  Given the blog is set up
  And I am logged into the admin panel
  And the following categories exists:
  |name   |keywords|description      |
  |First  | X Y Z  |First Category   |
  |Second | X Z Y  |Second Category  |


Scenario: I Should be able to create a category
  Given I create a category with name "New Category", keywords "X Y Z" and description "XXX"
  And I am on the admin categories page
  Then I should see "New Category"

Scenario: I should see the existing categories
  Given I am on the admin categories page
  Then I should see "First"
  And I should see "Second"




