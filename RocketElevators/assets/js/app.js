const express=require('express')
const bodyparser=require('body-parser')
const app=express()

app.use(bodyparser.urlencoded({extended:true}))


app.get('',(req,res)=>{
    res.sendfile(__dirname+"/index.hmtl")

})

app.post('/',(req,res)=>{
    const n1=req.body.num1

    const n2=req.body.num2
})




app.listen(3000,(res)=>{
    console.log("server started at port 3000")
})