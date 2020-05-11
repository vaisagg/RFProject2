*** Settings ***
Library  ../TestData/ReadTestData.py

*** Variables ***
*** Keywords ***
Read RowCount
    [arguments]  ${sheetname}
    ${rowC}=  ReadTD_Rowcount  ${sheetname}
    [return]  ${rowC}

Read TestData
    [arguments]  ${sheetname}  ${row}  ${col}
    ${celval}=  ReadTD  ${sheetname}  ${row}  ${col}
#    log to console  ${celval}
    [return]  ${celval}







