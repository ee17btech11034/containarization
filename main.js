const express = require("express")
const app = express()

const PORT = ProcessingInstruction.env.PORT || 8000 

app.get('/', (req, res)=>{
    return res.json({'message':"Hello from Node container"})
})

app.listen(PORT, ()=>console.log("server started on ", PORT))