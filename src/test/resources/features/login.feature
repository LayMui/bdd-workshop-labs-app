Feature: login
    In order to use the react native app
    As a mobile user mandatory
    Mary wants to login to use the app

  Background:
    Given Mary is at the react native app
    

  @mobile
  Scenario Outline: login
    As a mobile user Mary
    Mary want to be to login to access the react native app
    When she enters her email "<email>" and her password "<password>"
    Then she is logged in and see the Hello World

    Examples:
       | email          | password    |
       | mary@gmail.com | iLoveRN!123 |
  