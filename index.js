const express = require('express')

const app = express()

const PORT = process.env.PORT || 5000


app.get("/", function(req,res){
    res.send("<h2>India Vs Zimbawe ...</h2>")
})


app.listen(PORT, () =>  console.log(`App is running on PORT ${PORT}`))