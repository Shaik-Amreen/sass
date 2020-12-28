const db=require('../config/db.config')
const Salary=db.ClgSalary

let bcrypt=require('bcryptjs');
const { Op } = require('sequelize');
//creae a user post a user

exports.create = (req, res) => {  
    // Save Employee  to MySQL database
  
    const emp={
        empid:req.body.empid,
        empname:req.body.empname,
        empdept:req.body.empdept,
        empaccno:req.body.empaccno,
        empbasic:req.body.empbasic,
        emphra:req.body.emphra,
        empda:req.body.empda,
        empsalary:req.body.empsalary,
        empdate :req.body.empdate
        
    }
//alert(user.utype)
Salary.findOrCreate({
    where: { empdate: emp.empdate+emp.empid},
    defaults: {
        empid:emp.empid,
        empname:emp.empname,
        empda:emp.empda,
        empsalary:emp.empsalary,
        empdept:emp.empdept,
        empaccno:emp.empaccno,
        empbasic:emp.empbasic,
        emphra:emp.emphra,
         empdate:emp.empdate,
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
    Salary.findOne({ 
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
    Salary.findAll().then(users => {
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
      Salary.findOne({ 
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
    var user = req.body;
    //const name = req.params.name;
    Salary.update({ 
        empid:req.body.empid,
        empname:req.body.empname,
        empda:req.body.empda,
        empsalary:req.body.empsalary,
        
        empdept:req.body.empdept,
        empaccno:req.body.empaccno,
        empbasic:req.body.empbasic,
        emphra:req.body.emphra
           
          }, 
          { 
            where: {
              empid: req.params.empid
            } 
          })
          .then(() => {
              res.status(200).send(user);
             }).catch(err => {
              res.status(500).send("Error -> " + err);
             })
  };
   
  // Delete a emp by Id
  exports.delete = (req, res) => {
    const empid = req.params.empid;
    Salary.destroy({
          where: { empid: empid }
        }).then(() => {
          res.status(200).send('user has been deleted!');
        }).catch(err => {
          res.status(500).send("Fail to delete!");
        });
  };