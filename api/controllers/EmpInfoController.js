const db=require('../config/db.config')
const Emp_Info=db.Emp_Info

let bcrypt=require('bcryptjs');
const { Op } = require('sequelize');
//creae a user post a user

exports.create = (req, res) => {  
    // Save Employee  to MySQL database
  
    const emp={
        empid:req.body.empid,
        empname:req.body.empname,
        empsname:req.body.empsname,
        empgen:req.body.empgen,
        empdes:req.body.empdes,
        empdept:req.body.empdept,
        empqua:req.body.empqua,
        empphno:req.body.empphno,
        empemail:req.body.empemail,
        status:req.body.status
    }
//alert(user.utype)
Emp_Info.findOrCreate({
    where: { empid: emp.empid },
    defaults: {
        empid:emp.empid,
        empname:emp.empname,
        empsname:emp.empsname,
        empgen:emp.empgen,
        empdes:emp.empdes,
        empdept:emp.empdept,
        empqua:emp.empqua,
        empphno:emp.empphno,
        empemail:emp.empemail,
        status:emp.status
    }
  }).then(([user,reg])=>{
    
    res.send(reg)})
  .catch(err => {
    res.status(500).send("Error -> " + err);
  })
  };
//fetch emp by id
  exports.empinfo=(req,res)=>{
    const emp={
      empid:req.body.empid
  }
    Emp_Info.findOne({ 
      where:{
       empid:emp.empid }
     })
    .then(nuser=>{
      res.send(nuser)
      
    })
    .catch(err => {
      res.status(500).send("Error -> " + err);
    })
    
  }
  //fetching all uasers
  exports.findAll = (req, res) => {
    Emp_Info.findAll().then(users => {
      // Send all Books to Client
      res.send(users);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    })
  }


 // Find a emp by shaort name
exports.findByname = (req, res) => {  
    
        const empname=req.params.empname
        console.log(empname)
    console.log("amrennnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn")
      Emp_Info.findOne({ 
        where:{
         empid:empname}
       })
      .then(nuser=>{
        res.send(nuser)
        
      })
      .catch(err => {
        res.status(500).send("Error -> " + err);
      })
      
  };
   

  // Update a User
  exports.update = (req, res) => {
   const emp={
      empid:req.body.empid,
     /* empname:req.body.empname,
         empsname:req.body.empsname,
         empgen:req.body.empgen,
         empdes:req.body.empdes,
         empdept:req.body.empdept,
         empqua:req.body.empqua,
         empphno:req.body.empphno,
         empemail:req.body.empemail,*/
         status:req.body.status
    }
    //const name = req.params.name;
    Emp_Info.update({ 
       empid:emp.empid,
    /* empname:emp.empname,
        empsname:emp.empsname,
        empgen:emp.empgen,
        empdes:emp.empdes,
        empdept:emp.empdept,
        empqua:emp.empqua,
        empphno:emp.empphno,
        empemail:emp.empemail,*/
        status:emp.status
          }, 
          { 
            where: {
              empid:emp.empid
            } 
          })
          .then(() => {
              res.status(200).send(emp);
              console.log(emp)
             }).catch(err => {
              res.status(500).send("Error -> " + err);
             })
  };
   
  // Delete a emp by Id
  exports.delete = (req, res) => {
    const empid = req.params.empid;
    Emp_Info.destroy({
          where: { empid: empid }
        }).then(() => {
          res.status(200).send('user has been deleted!');
        }).catch(err => {
          res.status(500).send("Fail to delete!");
        });
  };



  