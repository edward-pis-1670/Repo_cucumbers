"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const assert_1 = __importDefault(require("assert"));
const cucumber_1 = require("@cucumber/cucumber");
function isItFriday(today) {
    return "Nope";
}
(0, cucumber_1.Given)("today is Sunday", function () {
    // Write code here that turns the phrase above into concrete actions
    this.today = "Wenesday";
});
(0, cucumber_1.When)("I ask whether it's Friday yet", function () {
    this.actualAnswer = isItFriday(this.today);
});
(0, cucumber_1.Then)("I should be told {string}", function (expectedAnswer) {
    assert_1.default.strictEqual(this.actualAnswer, expectedAnswer);
});
