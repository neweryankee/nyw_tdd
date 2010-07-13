Feature: Determine scheduled activity for a given date
  In order to plan my life
  As a fisher and rubyist
  I want to see what I have scheduled

Scenario: Run impromptu with weekday
  When I run "impromptu 7/14/2010"
  Then the output should match /Hack/
   And the stderr should contain ""
   And the exit status should be 0

Scenario: Run impromptu with weekend day
  When I run "impromptu 7/17/2010"
  Then the output should match /Fish/
   And the stderr should contain ""
   And the exit status should be 0

Scenario: Run impromptu with Tuesday
  When I run "impromptu 7/13/2010"
  Then the output should match /bostonrb/
   And the stderr should contain ""
   And the exit status should be 0

Scenario: Run impromptu with no date
  When I run "impromptu "
  Then the output should match /No plan/
   And the stderr should contain ""
   And the exit status should be 0

Scenario: Run impromptu with Tuesday piping to file
  When I run "impromptu 7/13/2010 > my_schedule.txt"
  Then the output should contain exactly ""
   And the stderr should contain ""
   And the exit status should be 0
   And the file "my_schedule.txt" should contain "bostonrb"

Scenario: Run impromptu with invalid date
  When I run "impromptu 7/32/2010"
   And the stderr should contain "argument out of range"
   And the exit status should be 1
   And it should fail with:
      """
      argument out of range
      """

