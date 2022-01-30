Feature: Registration

    Registration for user

    Scenario: Registration fail with no credentials
        When I make a "POST" request to "/auths/signup"
        When I receive a response
        Then the status code should be 400

    Scenario: Registration fail with invalid username
        When I make a "POST" request to "/auths/signup" with:

            | username        | inv               |
            | password        | Password$1        |
            | confirmPassword | Password$1        |
            | email           | hoa1234@gmail.com |
            | fullName        | hoa1234hoa        |
            | address         | Nam Tu Liem No1   |
        When I receive a response
        Then the status code should be 400

    Scenario: Registration fail with invalid password
        When I make a "POST" request to "/auths/signup" with:

            | username        | test0@test.com    |
            | password        | Password$121      |
            | confirmPassword | Password$121      |
            | email           | hoa1234@gmail.com |
            | fullName        | hoa1234hoa        |
            | address         | Nam Tu Liem No1   |
        When I receive a response
        Then the status code should be 400

    Scenario: Registration successful with valid credentials
        When I make a "POST" request to "/auths/signup" with:

            | username        | testno1la         |
            | password        | hoa123456         |
            | confirmPassword | hoa123456         |
            | email           | hoa1234@gmail.com |
            | fullName        | hoa1234hoa        |
            | address         | Nam Tu Liem No1   |
        When I receive a response
        Then the status code should be 201

    Scenario: Registration fail with existing credentials
        When I make a "POST" request to "/auths/signup" with:

            | username        | testno1la         |
            | password        | Password$1        |
            | confirmPassword | Password$1        |
            | email           | hoa1234@gmail.com |
            | fullName        | hoa1234hoa        |
            | address         | Nam Tu Liem No1   |
        When I receive a response
        Then the status code should be 409