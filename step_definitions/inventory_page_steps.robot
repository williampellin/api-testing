*** Settings ***
Documentation        INVENTORY PAGE STEPS
...
...                  All steps from Inventory Page should be written here.

Resource    ../page_objects/inventory_page_objects.robot
Library     SeleniumLibrary

*** Keywords ***
Peny should see the inventory page
    Wait Until Element Is Visible    ${INVENTORY_PAGE_IDENTIFIER}
    ${current_url}=    Get Location
    Should Contain    ${current_url}    /inventory.html   