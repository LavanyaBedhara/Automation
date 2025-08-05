Feature: Sidebar functionality on OurBus Admin

  Scenario: Sidebar loads with all enabled modules
    Given I open the OurBus admin site
    Then I should see the sidebar with all menu items

  Scenario: Sidebar collapse and expand functionality
    Given I open the OurBus admin site
    When I click the menu icon
    Then the sidebar should collapse
    When I click the menu icon
    Then the sidebar should expand



Feature: Users Module Functionality

  Scenario: TC-04 Navigate to Users module and verify UI elements
    Given I am on the Users module
    Then I should see the Users table

  Scenario: TC-05 Add a new user with valid details
    Given I am on the Users module
    When I click the Add User button
    And I fill in valid user details
    And I submit the form
    Then I should see the new user in the list

  Scenario: TC-06 Try to add user with invalid email
    Given I am on the Users module
    When I click the Add User button
    And I enter an invalid email
    And I submit the form
    Then I should see an email validation error

  Scenario: TC-07 Search for a user by name
    Given I am on the Users module
    When I search for a user named "LoadTest User 9"
    Then I should see "LoadTest User 9" in the results

  Scenario: TC-08 Edit an existing user's name
    Given I am on the Users module
    When I edit the user "LoadTest User 8"
    And I change the name to "Updated User"
    And I submit the changes
    Then I should see "Updated User" in the results

  Scenario: TC-09 Delete a user
    Given I am on the Users module
    When I delete the user "LoadTest User 7"
    Then I should not see "LoadTest User 7" in the list

  Scenario: TC-10 Filter users by status
    Given I am on the Users module
    When I apply the status filter "Active"



    Feature: Agent Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Agent module

  Scenario: Add a new agent
    When I click on the "Add Agent" button
    And I enter valid agent details
    And I click "Save"
    Then I should see the new agent in the list

  Scenario: View an existing agent
    When I search for an existing agent
    And I click on the agent name
    Then I should see the agent's details

  Scenario: Edit an existing agent
    When I search for an existing agent
    And I click the "Edit" button
    And I update the agent's information
    And I click "Save"
    Then the changes should be reflected in the agent list

  Scenario: Delete an existing agent
    When I search for an existing agent
    And I click the "Delete" button
    And I confirm the deletion
    Then the agent should be removed from the list

  Scenario: Negative test – Add agent with invalid data
    When I click on the "Add Agent" button
    And I enter invalid or incomplete agent details
    And I click "Save"
    Then I should see a validation or error message




Feature: Role Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Role module

  Scenario: Add a new role
    When I click on the "Add Role" button
    And I enter valid role details
    And I click "Save"
    Then I should see the new role in the list

  Scenario: View an existing role
    When I search for an existing role
    And I click on the role name
    Then I should see the role's details

  Scenario: Edit an existing role
    When I search for an existing role
    And I click the "Edit" button
    And I update the role information
    And I click "Save"
    Then the changes should be reflected in the role list

  Scenario: Delete an existing role
    When I search for an existing role
    And I click the "Delete" button
    And I confirm the deletion
    Then the role should be removed from the list

  Scenario: Negative test – Add role with invalid data
    When I click on the "Add Role" button
    And I enter invalid or incomplete role details
    And I click "Save"
    Then I should see a validation or error message




Feature: City Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the City module

  Scenario: Add a new city
    When I click on the "Add City" button
    And I enter valid city details
    And I click "Save"
    Then I should see the new city in the list

  Scenario: View an existing city
    When I search for an existing city
    And I click on the city name
    Then I should see the city's details

  Scenario: Edit an existing city
    When I search for an existing city
    And I click the "Edit" button
    And I update the city information
    And I click "Save"
    Then the changes should be reflected in the city list

  Scenario: Delete an existing city
    When I search for an existing city
    And I click the "Delete" button
    And I confirm the deletion
    Then the city should be removed from the list

  Scenario: Negative test – Add city with invalid data
    When I click on the "Add City" button
    And I enter invalid or incomplete city details
    And I click "Save"
    Then I should see a validation or error message






Feature: Vendor Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Vendor module

  Scenario: Add a new vendor
    When I click on the "Add Vendor" button
    And I enter valid vendor details
    And I click "Save"
    Then I should see the new vendor in the list

  Scenario: View an existing vendor
    When I search for an existing vendor
    And I click on the vendor name
    Then I should see the vendor's details

  Scenario: Edit an existing vendor
    When I search for an existing vendor
    And I click the "Edit" button
    And I update the vendor information
    And I click "Save"
    Then the changes should be reflected in the vendor list

  Scenario: Delete an existing vendor
    When I search for an existing vendor
    And I click the "Delete" button
    And I confirm the deletion
    Then the vendor should be removed from the list

  Scenario: Negative test – Add vendor with invalid data
    When I click on the "Add Vendor" button
    And I enter invalid or incomplete vendor details
    And I click "Save"
    Then I should see a validation or error message





Feature: Bus Layout Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Bus Layout module

  Scenario: Add a new bus layout
    When I click on the "Add Bus Layout" button
    And I enter valid layout details
    And I click "Save"
    Then I should see the new layout in the list

  Scenario: View an existing bus layout
    When I search for an existing bus layout
    And I click on the layout name
    Then I should see the layout's details

  Scenario: Edit an existing bus layout
    When I search for an existing bus layout
    And I click the "Edit" button
    And I update the layout details
    And I click "Save"
    Then the changes should be reflected in the layout list

  Scenario: Delete an existing bus layout
    When I search for an existing bus layout
    And I click the "Delete" button
    And I confirm the deletion
    Then the layout should be removed from the list

  Scenario: Negative test – Add layout with invalid data
    When I click on the "Add Bus Layout" button
    And I enter invalid or incomplete layout details
    And I click "Save"
    Then I should see a validation or error message






Feature: Trip Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Trip module

  Scenario: Add a new trip
    When I click on the "Add Trip" button
    And I enter valid trip details
    And I click "Save"
    Then I should see the new trip in the list

  Scenario: View an existing trip
    When I search for an existing trip
    And I click on the trip name
    Then I should see the trip's details

  Scenario: Edit an existing trip
    When I search for an existing trip
    And I click the "Edit" button
    And I update the trip details
    And I click "Save"
    Then the changes should be reflected in the trip list

  Scenario: Delete an existing trip
    When I search for an existing trip
    And I click the "Delete" button
    And I confirm the deletion
    Then the trip should be removed from the list

  Scenario: Negative test – Add trip with invalid data
    When I click on the "Add Trip" button
    And I enter invalid or incomplete trip details
    And I click "Save"
    Then I should see a validation or error message






Feature: Route Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Route module

  Scenario: Add a new route
    When I click on the "Add Route" button
    And I enter valid route details
    And I click "Save"
    Then I should see the new route in the list

  Scenario: View an existing route
    When I search for an existing route
    And I click on the route name
    Then I should see the route's details

  Scenario: Edit an existing route
    When I search for an existing route
    And I click the "Edit" button
    And I update the route details
    And I click "Save"
    Then the changes should be reflected in the route list

  Scenario: Delete an existing route
    When I search for an existing route
    And I click the "Delete" button
    And I confirm the deletion
    Then the route should be removed from the list

  Scenario: Negative test – Add route with invalid data
    When I click on the "Add Route" button
    And I enter invalid or incomplete route details
    And I click "Save"
    Then I should see a validation or error message





Feature: Stop Module Functionality

  Background:
    Given I am logged into the system
    And I navigate to the Stop module

  Scenario: Add a new stop
    When I click on the "Add Stop" button
    And I enter valid stop details
    And I click "Save"
    Then I should see the new stop in the list

  Scenario: View an existing stop
    When I search for an existing stop
    And I click on the stop name
    Then I should see the stop's details

  Scenario: Edit an existing stop
    When I search for an existing stop
    And I click the "Edit" button
    And I update the stop details
    And I click "Save"
    Then the changes should be reflected in the stop list

  Scenario: Delete an existing stop
    When I search for an existing stop
    And I click the "Delete" button
    And I confirm the deletion
    Then the stop should be removed from the list

  Scenario: Negative test – Add stop with invalid data
    When I click on the "Add Stop" button
    And I enter invalid or incomplete stop details
    And I click "Save"
    Then I should see a validation or error message






Feature: General UI Validation Across Modules

  Background:
    Given I am logged into the system

  Scenario: Validate header and sidebar consistency
    Then the header should be visible with correct logo and title
    And the sidebar should contain all expected modules with icons
    And all UI elements should follow consistent styling

  Scenario: Validate primary buttons on key screens
    Given I navigate to the "Users" module
    Then the "Add User" button should be visible and styled consistently

    When I navigate to the "Agent" module
    Then the "Add Agent" button should be visible and styled consistently

  Scenario: Validate scroll behavior and layout responsiveness
    When I resize the browser window
    Then the layout should adjust responsively without breaking

    And scrollbars should appear only when needed
    And fixed headers or menus should remain visible while scrolling

  Scenario: Validate form validation message consistency
    When I submit a form with missing required fields
    Then error messages should appear next to the respective fields
    And the styling of the error messages should be consistent across all forms




Feature: List View Functionality Across Modules

  Background:
    Given I am logged into the system

  Scenario: Validate table structure in list views
    Given I navigate to the "Users" module
    Then I should see a table with columns like Name, Email, Role, and Actions

    When I navigate to the "Agent" module
    Then I should see a table with relevant agent details

  Scenario: Validate pagination controls
    Given I am on a module with more than one page of data
    Then pagination controls should be visible
    When I click on the "Next" page button
    Then the next set of records should be displayed

  Scenario: Validate search functionality
    Given I enter a valid keyword in the search field
    When I press Enter or click Search
    Then the list should display filtered results matching the keyword

  Scenario: Validate sort functionality
    Given I am on a list view with sortable columns
    When I click on a column header
    Then the list should be sorted in ascending order
    When I click the same header again
    Then the list should be sorted in descending order

  Scenario: Validate filters in list views
    Given I open the filters panel or dropdown
    When I apply one or more filters
    Then the list should update with matching records
    And applied filters should be clearly visible or indicated

    Then I should see only users with status "Active"
