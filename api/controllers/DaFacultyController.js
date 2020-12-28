const db=require('../config/db.config')
const Emp_Info=db.DaFaculty

let bcrypt=require('bcryptjs');
const { Op } = require('sequelize');
//creae a user post a user

exports.create = (req, res) => {  
    // Save Employee  to MySQL database
  
    const emp={
        date:req.body.date,
        da:req.body.da,
        
    }
//alert(user.utype)
Emp_Info.findOrCreate({
    where: { date: emp.date },
    defaults: {
        date:emp.date,
        da:emp.da,
        
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
      date:req.body.date
  }
    Emp_Info.findOne({ 
      where:{
       date:emp.date }
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
      console.log(users)
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    })
  }


 // Find a emp by shaort name
exports.findByname = (req, res) => {  
    
        const da=req.params.da
    console.log(da)
      Emp_Info.findOne({ 
        where:{
         date:da}
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
    Emp_Info.update({ 
        date:req.body.date,
        da:req.body.da,
           
          }, 
          { 
            where: {
              date: req.params.date
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
    const date = req.params.date;
    Emp_Info.destroy({
          where: { date: date }
        }).then(() => {
          res.status(200).send('user has been deleted!');
        }).catch(err => {
          res.status(500).send("Fail to delete!");
        });
  };