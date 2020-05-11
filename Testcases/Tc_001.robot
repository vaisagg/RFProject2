*** Settings ***
Library  SeleniumLibrary
Resource  ../UserDefinedKeywords/UDKeywords.robot

*** Variables ***
${url}  https://www.facebook.com
${Browser}  Chrome


*** Test Cases ***
Open Facebook and Check Login
    open browser  ${url}  ${Browser}
    maximize browser window
    ${row}=  Read RowCount  Sheet1
    log to console  ${row}
    : FOR  ${i}  IN RANGE  1  ${row}+1
     \  ${data1}=  Read TestData  Sheet1  ${i}  1
     \  ${data2}=  Read TestData  Sheet1  ${i}  2
     \  input text  name=email  ${data1}
     \  input text  name=pass  ${data2}
     \  sleep  2 seconds

