const db=require('../config/db.config')
const Emp_Leave=db.Emp_Leave;
const Facleave=db.Facleave;
const Applyleave=db.Applyleave
 //fetching all uasers
 exports.findAll = (req, res) => {
    Emp_Leave.findAll().then(users => {
      // Send all Books to Client
      res.send(users);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    })
  }

  exports.findleave = (req, res) => {
    Facleave.findAll().then(users => {
      // Send all Books to Client
      res.send(users);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    })
  }

  exports.findempleaves = (req, res) => {
    Applyleave.findAll().then(users => {
      // Send all Books to Client
      res.send(users);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    })
  }

  exports.create = (req, res) => {  
    // Save Employee  to MySQL database
  
    const fac={
        empid:req.body.empid,
        empname:req.body.empname,
        empdept:req.body.empdept,
        empdes:req.body.empdes,
        type:req.body.type,
        from:req.body.from,
        to :req.body.to,
        days:req.body.days,
        reason:req.body.reason,}
//alert(user.utype)
Facleave.findOrCreate({
    where: { to: fac.to+fac.empid},
    defaults: {
        empid:fac.empid,
        empname:fac.empname,
        empdept:fac.empdept,
        empdes:fac.empdes,
        type:fac.type,
        from:fac.from,
        to:fac.to,
         days:fac.days,
         reason:fac.reason,
    }
  }).then(([user,reg])=>{
    
    res.send(reg)})
  .catch(err => {
    res.status(500).send("Error -> " + err);
  })
  };

  exports.createleave = (req, res) => {  
    // Save Employee  to MySQL database
  
    const fac={
        empid:req.body.empid,
        empcls:req.body.empcls,
        empels:req.body.empels,
        empvac:req.body.empvac,
        empml:req.body.empml,
        emplop:req.body.emplop,
      }
//alert(user.utype)
Emp_Leave.findOrCreate({
    where: { empid: fac.empid},
    defaults: {
        empid:fac.empid,
        empcls:fac.empcls,
        empels:fac.empels,
        empvac:fac.empvac,
        empml:fac.empml,
        emplop:fac.emplop,
    
    }
  }).then(([user,reg])=>{
    
    res.send(reg)})
  .catch(err => {
    res.status(500).send("Error -> " + err);
  })
  };

  exports.update = (req, res) => {
    const emp={
      empid:req.body.empid,
      empcls:req.body.empcls,
      empels:req.body.empels,
      empvac:req.body.empvac
      
      
  }
console.log(emp)
    Emp_Leave.update({ 
       empid:emp.empid,
        empcls:emp.empcls,
        empels:emp.empels,
        empvac:emp.empvac
           
          }, 
          { 
            where: {
              empid: emp.empid
            } 
          })
          .then(() => {
              res.status(200).send(emp);
             }).catch(err => {
              res.status(500).send("Error -> " + err);
             })
  };




  
  exports.getemplea = (req, res) => {  
    
    const empname=req.params.empname
console.log(empname)
  Emp_Leave.findOne({ 
    where:{
     empid:empname}
   })
  .then(nuser=>{
    res.send(nuser)
    
  })
  .catch(err => {
    res.status(500).send("Error -> " + err);
  })}

  exports.applyl = (req, res) => {  
    // Save Employee  to MySQL database
  
    const leave={
        empid:req.body.empid,
        empname:req.body.empname,
        empdesn:req.body.empdesn,
        leavetype:req.body.leavetype,
        from:req.body.from,
        to :req.body.to,
        days:req.body.days,
        reason:req.body.reason,
      applied:req.body.applied,
      appliedon:req.body.appliedon,
      done:req.body.done,}
//alert(user.utype)
Applyleave.findOrCreate({
    where: {empid:leave.empid+leave},
    defaults: {
        empid:leave.empid,
        empname:leave.empname,
        empdesn:leave.empdesn,
        empdept:leave.empdept,
        leavetype:leave.leavetype,
        from:leave.from,
        to:leave.to,
         days:leave.days,
         reason:leave.reason,
         applied:leave.applied,
         appliedon:leave.appliedon,
         done:leave.done
    }
  }).then(([user,reg])=>{
    
    res.send(reg)})
  .catch(err => {
    res.status(500).send("Error -> " + err);
  })
  };
  

  exports.leaveupdate = (req, res) => {
    const emp={
      empid:req.body.empid,
      applied:req.body.applied,
            days:req.body.days, 
            empdesn:req.body.empdesn,
            empname:req.body.empname,
            from:req.body.from,
           leavetype:req.body.leavetype,
           reason:req.body.reason, 
            to: req.body.to,
           applied:req.body.applied,
           appliedon:req.body.appliedon,
           done:req.body.done
      
  }
console.log(emp)
   Applyleave.update({ 
    empid:emp.empid,
    days:emp.days, 
    empdesn:emp.empdesn,
    empname:emp.empname,
    from:emp.from,
   leavetype:emp.leavetype,
   reason:emp.reason, 
    to: emp.to,
   applied:emp.applied,
   appliedon:emp.appliedon,
   done:emp.done
          }, 
          { 
            where: {
              empid: emp.empid ,from:emp.from,days:emp.days
            } 
          })
          .then(() => {
              res.status(200).send(emp);
             }).catch(err => {
              res.status(500).send("Error -> " + err);
             })
  };








