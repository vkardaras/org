---
tags:
  - gherkin
---
```gherkin
Feature: Guess the number

	Scenario: Host starts a game
		When the Host starts a game
		Then the Host waits for a Player to join
		
	Scenario:
		Given the Host has started a game with the number 23
		When the Player joins the Host's game
		Then the Player is asked to guess a number between 1-100
```

