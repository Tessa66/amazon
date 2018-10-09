*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com  ie
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

    Click Link  id=hlb-ptc-btn-native
    Wait Until Page Contains Element  id=a-popover-4
    Wait Until Page Contains  Add to your order
    Click Button  id=siNoCoverage-announce
    Wait Until Page Contains  Sign in
#    Page Should Contain Element  ap_signin1a_pagelet_title
#    Element Text Should Be  ap_signin1a_pagelet_title  Sign in

    Close Browser


*** Keywords ***


