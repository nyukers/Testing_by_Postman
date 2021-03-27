var data = JSON.parse(responseBody);

var schema = {
    //specify the type of object
    "type": "object",
    //specify requires properties
    "required": ["people","planets","films","species","vehicles","starships"],
    //describe the properties
    "properties":{
        "people": {"type":"string"},
        "planets": {"type":"string"},
        "films": {"type":"string"},
        "species": {"type":"string"},
        "vehicles": {"type":"string"},
        "starships": {"type":"string"},
    }
};

pm.test('Body is correct.', function() {
    pm.expect(tv4.validate(data, schema)).to.be.true;
});
