const { application } = require('express')
const express=require('express')
const bodyParser = require('body-parser')
const app=express()
const port = 3000

app.use(bodyParser.urlencoded({extended: true}));

//import {quote} from "./FormScript"

app.post('/view',(req,res)=>{
	console.log(post.numberelevators,post.numberfloors,post.numberbasement,post.numberparking,post.numberbusiness,post.numbercages,post.numbercorporation,post.numberoccupant,post.numberhours)
	
    
})

// app.post('/',(req,res)=>{
//     const n1=req.body.num1

//     const n2=req.body.num2
// })




app.listen(3000,(res)=>{
    console.log("server started at port 3000")
})