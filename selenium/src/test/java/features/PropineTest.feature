Feature: Date Conversion with various formats supported

  Scenario Outline:To test the Propine Date Conversion Functionality with valid dates
    Given Am using the website https://vast-dawn-73245.herokuapp.com/
    When I enter <date> on the input field and click 'Submit'
    Then I should see a date 'Tue Mar 17 2020 00:00:00 GMT+0000' on the form

    Examples:
      |date|
      |17-march-20  |
      |17-march-2020  |
      |17-March-2020|
      |17-March-20  |
      |17-Mar-2020  |
      |17-Mar-20    |
      |17/march/20  |
      |17/march/2020 |
      |17/March/2020|
      |17/March/20  |
      |17/Mar/2020  |
      |17/Mar/20    |
      |17 march 20  |
      |17 march 2020  |
      |17 March 2020|
      |17 March 20  |
      |17 Mar 2020  |
      |17 Mar 20    |
      |March-17-2020|
      |March-17-20  |
      |Mar-17-2020  |
      |Mar-17-20    |
      |march-17-2020|
      |march-17-20  |
      |mar-17-2020  |
      |mar-17-20    |
      |03-17-2020   |
      |03-17-20     |
      |3-17-2020   |
      |3-17-20     |
      |March/17/2020|
      |March/17/20  |
      |Mar/17/2020  |
      |Mar/17/20    |
      |march/17/2020|
      |march/17/20  |
      |mar/17/2020  |
      |mar/17/20    |
      |03/17/2020   |
      |03/17/20     |
      |3/17/2020   |
      |3/17/20     |
      |March 17 2020|
      |March 17 20  |
      |Mar 17 2020  |
      |Mar 17 20    |
      |march 17 2020|
      |march 17 20  |
      |mar 17 2020  |
      |mar 17 20    |
      |03 17 2020   |
      |03 17 20     |
      |3 17 2020   |
      |3 17 20     |
      |2020 march 17  |
      |2020 mar 17|
      |2020 17 march|
      |2020 17 mar  |
      |2020-march-17  |
      |2020-mar-17|
      |2020-17-march|
      |2020-17-mar  |
      |2020/march/17  |
      |2020/mar/17|
      |2020/17/march|
      |2020/17/mar  |
      |2020 March 17  |
      |2020 Mar 17|
      |2020 17 March|
      |2020 17 Mar  |
      |2020-March-17  |
      |2020-Mar-17|
      |2020-17-March|
      |2020-17-Mar  |
      |2020/March/17  |
      |2020/Mar/17|
      |2020/17/March|
      |2020/17/Mar  |
      |2020 03 17  |
      |2020 3 17|
      |2020-03-17  |
      |2020-3-17|
      |2020/03/17  |
      |2020/3/17|

  Scenario Outline:To test the Propine Date Conversion Functionality with invalid dates
    Given Am using the website https://vast-dawn-73245.herokuapp.com/
    When I enter <date> on the input field and click 'Submit'
    Then I should see a date 'Invalid date' on the form

    Examples:
      |date|
      |17-03-2020   |
      |17-03-20     |
      |17-3-2020   |
      |17-3-20     |
      |17/03/2020   |
      |17/03/20     |
      |17/3/2020   |
      |17/3/20     |
      |17 03 2020   |
      |17 03 20     |
      |17 3 2020   |
      |17 3 20     |
      |2020 17 03|
      |2020 17 3  |
      |2020-17-03|
      |2020-17-3  |
      |2020/17/03|
      |2020/17/3  |
      |20 03 17  |
      |20 3 17|
      |20 17 03|
      |20 17 3  |
      |20-03-17  |
      |20-3-17|
      |20-17-03|
      |20-17-3  |
      |20/03/17  |
      |20/3/17|
      |20/17/03|
      |20/17/3  |

  Scenario Outline:To test the Propine Date Conversion Functionality with differnt year format
    Given Am using the website https://vast-dawn-73245.herokuapp.com/
    When I enter <date> on the input field and click 'Submit'
    Then I should see a date 'Mon Mar 20 2017 00:00:00 GMT+0000' on the form

    Examples:
      |date|
      |20 march 17  |
      |20 mar 17|
      |20 17 march|
      |20 17 mar  |
      |20-march-17  |
      |20-mar-17|
      |20-17-march|
      |20-17-mar  |
      |20/march/17  |
      |20/mar/17|
      |20/17/march|
      |20/17/mar  |













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































