*** Settings ***
Documentation    Successful login
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
This is demoblaze first test case
  [Documentation]    Successful Login
    [Tags]    Functional TC3

    Open Browser    https://www.automationexercise.com/  Chrome
    Maximize Browser Window

    Set Selenium Speed    1s
    Click Element    //a[@href='/products']
    Execute JavaScript    window.scrollBy(0,300)

    #Input Text    //input[@id='search_product']  Top
    #Click Button    //button[@id='submit_search']

    #Execute Javascript    window.scrollBy(0,500)
    #Click Element    //a[@href='/product_details/5']

    #Input Text    //input[@id='quantity']  2
    #Click Element    //button[@class='btn btn-default cart']

    #ElementClickInterceptedException tackle, element cart modal needs to close then click on view cart
    #Wait Until Element Is Visible  //div[@id='cartModal']  10s
    #Click Button    //button[@class='btn btn-success close-modal btn-block']

    #Click Element    //a[@href='/view_cart']

    #Click Button  //button[text()='Continue Shopping']
    #sleep  4s
    Click Element    //a[@href = '#Women']
    Click Element    //a[@href='/category_products/7']

    Execute Javascript    window.scrollBy(0,500)
    Click Element    //a[@data-product-id='41']
    Wait Until Element Is Visible  //div[@id='cartModal']  10s
    Click Button    //button[@class='btn btn-success close-modal btn-block']
    Click Element    //a[@href='/view_cart']

  Execute Javascript    window.scrollBy(0,500)
  Click Link    Beautiful Peacock Blue Cotton Linen Saree

  #link on cotton no longer exists
  #Wait Until Element Is Visible    link=Cotton  timeout=10s
  #Click Element    //span[text()='Cotton']

  Execute Javascript    window.scrollBy(0,500)
  Click Element    //input[@id='name']
  Input Text    //input[@id='name']  Pragya
  Click Element    //input[@id='email']
  Input Text    //input[@id='email']  abc@gmail.com
  Click Element    //textarea[@id='review']
  Input Text    //textarea[@id='review']  This is to test GIT second commit changes
  sleep  3s










*** Keywords ***




