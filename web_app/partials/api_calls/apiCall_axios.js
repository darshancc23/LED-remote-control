const axios = require('axios');

axios({
    method: 'post',
    url: "https://api.thinger.io/v2/users/rahul_luffy/devices/pavan_tatti/led",
    data: {
        "in":true
    },
    headers: {
    'Content-Type': 'application/json;charset=UTF-8',
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NDE1MDI3MDcsImlhdCI6MTU0MTQ5NTUwNywidXNyIjoicmFodWxfbHVmZnkifQ.N-qIDRlwHRDIifvW6WVXRqaTM-mosS9yMnM7qHB8iAs',
    'Accept': 'application/json, text/plain, */*'
    }
  })
.then(function ({data}) {
  console.log('Success ' + JSON.stringify(data))
})
.catch(function (error) {
  console.log('Error ' + error.message)
})
