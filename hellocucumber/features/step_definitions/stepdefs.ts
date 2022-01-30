import assert from "assert";
import { Given, When, Then } from "@cucumber/cucumber";

function isItFriday(today: any) {
  return "Nope";
}

Given("today is Sunday", function () {
  // Write code here that turns the phrase above into concrete actions
  this.today = "Wenesday";
});

When("I ask whether it's Friday yet", function () {
  this.actualAnswer = isItFriday(this.today);
});

Then("I should be told {string}", function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
