Feature: validating ui browser launch

  Background:
#    * configure driver = { type: 'geckodriver' }
    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"], port:1234 }
    * def baseurl = 'http://www.bing.com'

  Scenario: open bing.com on the browser
    Given driver baseurl
    Then delay(2000)
##    below is for id
#    Then input("#sb_form_q","nepal")
##   below is for name, currently is not working
#    Then input("q","nepal")
##    below is for x-path
    Then input("//*[@id='sb_form_q']","nepal")
##    below is for css selector
#    Then input("[id='sb_form_q']","nepal")
    Then input("//*[@id='sb_form_q']",Key.ENTER)
    Then delay(5000)

  Scenario: find the link
    Given driver baseurl
    Then delay(2000)
    Then click('{a:0}Images')
    Then delay(5000)

  Scenario: click box in login.salesforce.com
    Given driver 'https://login.salesforce.com/'
    Then delay(2000)
    And maximize()
    Then delay(2000)
    Then leftOf("//label[@for='rememberUn']").click()
    Then delay(2000)
    Then click("//*[@id='forgot_password_link']")
    Then delay(5000)