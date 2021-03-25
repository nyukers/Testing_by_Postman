// 1. Correct response format
pm.test("Correct response format JSON", function () {
    pm.response.to.have.jsonBody()
});

// 2. We have all the declared fields in the response
pm.test("Check the we have all the declared fields in the response", function(){
    const jsonData = pm.response.json()

    pm.expect(jsonData).to.have.property("people");
    pm.expect(jsonData).to.have.property("planets");
    pm.expect(jsonData).to.have.property("films");
    pm.expect(jsonData).to.have.property("species");
    pm.expect(jsonData).to.have.property("vehicles");
    pm.expect(jsonData).to.have.property("starships");
});

// 3. Field value is not NULL
pm.test("Check that field value is not NULL", function () {
    var jsonData = pm.response.json()

    pm.expect(jsonData.people).not.equal(null);
    pm.expect(jsonData.planets).not.equal(null);
    pm.expect(jsonData.films).not.equal(null);
    pm.expect(jsonData.species).not.equal(null);
    pm.expect(jsonData.vehicles).not.equal(null);
    pm.expect(jsonData.starships).not.equal(null);
});

// 4.  Field value is not empty
pm.test("Check that field value is not empty", function () {
    var jsonData = pm.response.json()

    pm.expect(jsonData.people).not.equal("");
    pm.expect(jsonData.planets).not.equal("");
    pm.expect(jsonData.films).not.equal("");
    pm.expect(jsonData.species).not.equal("");
    pm.expect(jsonData.vehicles).not.equal("");
    pm.expect(jsonData.starships).not.equal("");
});

// 5. Current field corresonds to a specific value
pm.test("Check that field value has a specific value", function () {
    var jsonData = pm.response.json()

    pm.expect(jsonData.people).to.equal("http://swapi.dev/api/people/");
    pm.expect(jsonData.planets).to.equal("http://swapi.dev/api/planets/");
    pm.expect(jsonData.films).to.equal("http://swapi.dev/api/films/");
    pm.expect(jsonData.species).to.equal("http://swapi.dev/api/species/");
    pm.expect(jsonData.vehicles).to.equal("http://swapi.dev/api/vehicles/");
    pm.expect(jsonData.starships).to.equal("http://swapi.dev/api/starships/");
});

// 6. Check status code of response is 200 (Ok)
pm.test("Check status code of response is 200", function () {
    pm.response.to.have.status(200);
});

// 7. Status message is Ok
pm.test("Status message is OK", function () {
    pm.response.to.have.status("OK");
});

// 8. Response time is less than 1000ms
pm.test("Response time is less than 1000ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(1000)
    console.log("Response time: " + pm.response.responseTime + " ms");     
});

// 9. Check the header value in response
pm.test("Check the header value", function () {
    pm.response.to.have.header("Content-Type")
});

// 10. Check the header value is specific 
pm.test("Check the header value is specific", function () {
    pm.response.to.be.header("Content-Type","application/json")
});

// 11. Check the cookies exists
pm.test("Check the cookies exists", function () {
    pm.cookies.has("__cfduid")
});

// 12. Check the cookies have value
pm.test("Check the cookies have value", function () {
    try{
        var MY_COOKIE = pm.cookies.get("__cfduid");
        console.log("My cookies: " + MY_COOKIE);     
    } catch(e) {
        console.log("No cookies: " + e);     
    }
    //pm.cookies.has("__cfduid")
});

