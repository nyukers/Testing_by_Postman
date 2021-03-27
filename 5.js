# GET https://swapi.dev/api/people/1
var data = JSON.parse(responseBody);

var schema = {
    "type": "object",
    //specify requires properties
    "required": ["name","homeworld","films","species","vehicles","starships"],
    //describe the properties
    "properties":{
        "name":      {"type":"string"},
        "homeworld": {"type":"string"},
        "films":     {
            "type":"array",
            "items":{"type":"string"}
            },
        "species":   {
            "type":"array",
            "items":{"type":"string"}
            },
        "vehicles":  {
            "type":"array",
            "items":{"type":"string"}
            },
        "starships": {
            "type":"array",
            "items":{"type":"string"}
            },
    }
};

pm.test('Body is correct.', function() {
    pm.expect(tv4.validate(data, schema)).to.be.true;
});
