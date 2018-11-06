var request = require('request');

var headers = {
    'Content-Type': 'application/json;charset=UTF-8',
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NDE1MDI3MDcsImlhdCI6MTU0MTQ5NTUwNywidXNyIjoicmFodWxfbHVmZnkifQ.N-qIDRlwHRDIifvW6WVXRqaTM-mosS9yMnM7qHB8iAs',
    'Accept': 'application/json, text/plain, */*'
};

var dataString = '{"in":false}';

var options = {
    url: 'https://api.thinger.io/v2/users/rahul_luffy/devices/pavan_tatti/led',
    method: 'POST',
    headers: headers,
    body: dataString
};

function callback(error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log(body);
    }
}

request(options, callback);
