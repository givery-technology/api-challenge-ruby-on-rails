"use strict";
var
  assert = require("chai").assert,
  spec = require("api-first-spec"),
  expect = require("chai").expect;

var API = spec.define({
  "endpoint": "/api/users",
  "method": "GET",
  "request": {
    "contentType": spec.ContentType.URLENCODED,
    "params": {
      "id": "int"
    },
  },
  "response": {
    "contentType": spec.ContentType.JSON,
    "data": {
      "user": {
        "id": "int",
        "username": "string",
        "password": "string",
        "email": "string",
        "birthday": "date",
        "company": "string",
        "location": "string",
        "created_at": "date",
        "updated_at": "date"
      }
    }
  }
});

describe("login", function() {
  var host = spec.host("localhost:3000");

  it("Testing", function(done) {
    host.api(API).params({"id": 1}).success(function(data) {
      assert.equal(data[0].username, "user1");
      done();
    });
  });
});

module.exports = API;