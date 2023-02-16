@Fea1
Feature: Sample feature

  Background:
    * def dbUtils = Java.type('Utils.DBUtils');
    * def dbUti = new dbUtils();
    * def dbRepo = Java.type('DataRepo.KarateRepo');
    * def db = dbRepo.getInstance();
    * db.setDbInstance(dbUti.getSqlConn());

  @Sce1
  Scenario: sample 1
    * def TestCaseName = "postUser"
    * def requestUrl = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#baseUrl")
    * def requestPathParam = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#pathParams")
    * def requestBody = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#Body")
    * def responseStatusCode = db.getIntData("SELECT * FROM test.karatedata", TestCaseName, "response#resCode")
    Given url requestUrl+requestPathParam
    When request requestBody
    And method POST
    Then match responseStatus == responseStatusCode
    * print response

  @Sce2
  Scenario: sample 2
    * def TestCaseName = "getUsersByList"
    * def requestUrl = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#baseUrl")
    * def requestPathParam = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#pathParams")
    * def requestQueryParam = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#queryParams")
    * def requestBody = db.getStringData("SELECT * FROM test.karatedata", TestCaseName, "request#Body")
    * def responseStatusCode = db.getIntData("SELECT * FROM test.karatedata", TestCaseName, "response#resCode")
    Given url requestUrl+requestPathParam
    And param page = requestQueryParam
    When request requestBody
    And method GET
    Then match responseStatus == responseStatusCode
    * print response