*** Settings ***
Documentation        INVENTORY PAGE OBJECTS
...
...                  File to add css or xpath selectors located in the inventory page

*** Variables ***
${INVENTORY_PAGE_IDENTIFIER}       xpath=//span[@class='title' and contains(text(), 'roducts')]