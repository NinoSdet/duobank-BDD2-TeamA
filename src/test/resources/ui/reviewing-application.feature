Feature: Reviewing-Application feature
  As a mortgage loan applicant, I want to be able to review and edit the details of my loan application
  on a summary page so that I can ensure that all of the information is accurate and up-to-date.
  I want to be able to edit any section of the application, including the pre-approval inquiry,
  personal details, expenses, employment and income, and eConsent.
  Once I have made any necessary changes, I want to be able to submit the application.

  Background: Common steps for all scenarios in Reviewing Application page
    Given the user is on the sign-up pageR
    When the user enters valid username password and clicks on the sign-in buttonR
    And the user is redirected to the dashboard pageR
    And clicks mortgage application button
    And the user fills out all required fields in previous sections
    Then the user is redirected to the Summary page

  @smoke1
  Scenario: The Summary page should be accessible from the main application flow
  When the user is on summary page
  Then the user can see the text "PreApproval Inquiry"

  @smoke1
  Scenario: The Summary page should display all the information the user has previously entered
    When the user is on summary page
    Then the user can see the all information he entered in all sections

  @smoke1
  Scenario: Each section of the application should be clearly labeled and separated from the other sections
    When the user is on summary page
    Then the user can see that each is labeled and separated from the other sections
      |PreApproval Inquiry	|
      |Personal Details		|
      |Expenses	            |
      |Employment & Income	|
      |Order Credit         |
      |eConsent	            |

  @smoke1
  Scenario: Each section of the application should have an Edit button
    When the user is on summary page
    Then the user can see and click the edit button for each section so the user can make changes to that section


  @smoke1
  Scenario: Clicking the Edit button for a section should take the user back to the relevant page in the main application flow so that they can make any necessary changes
    When the user clicks the Edit button
    Then the user redirected to the relevant page to make any necessary changes

  @smoke1
  Scenario: Once the user has made changes to a section, the user should be able to return to the Summary page and see the updated information for that section
    When the user makes changes to a section
    Then the user should be able to return to the Summary page and see the updated information for that section

  @smoke1
    Scenario Outline: The user should be able to edit any section of the application in any order so the user should be able to return to the Summary page at any time
    When the user edits any "<section>" of the application in any order
    Then the user should be able to return to the Summary page at any time
    Examples:
      |section              |
      |PreApproval Details	|
      |Personal Information		|
      |Expenses	            |
      |Employment and Income	|
      |Credit Report         |
      |eConsent	            |

  @smoke1
  Scenario: The Summary page should include a Submit button that the user can click once they have reviewed and edited all sections of the application.
    When the user reviews all information entered
    Then the user should be able to click Submit button

  @smoke1
  Scenario: Clicking the Submit button should submit the application and take the user to a confirmation page that confirms that their application has been received and will be reviewed by the bank.
    When the user clicks Submit button
    Then the user should be redirected to the confirmation page






