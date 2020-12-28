const db=require('../config/db.config')
const EMP_Office=db.EMP_Office
 //fetching all uasers
 exports.findAll = (req, res) => {
    EMP_Office.findAll().then(users => {
      // Send all Books to Client
      res.send(users);
    }).catch(err => {
      res.status(500).send("Error -> " + err);
    })
  }


  exports.createoffice = (req, res) => {  
    // Save Employee  to MySQL database
  
    const emp={
        empid:req.body.empid,
        emptype:req.body.emptype,
        emppan:req.body.emppan,
        empaadhar:req.body.empaadhar,
        empacno:req.body.empacno,
        empbasic:req.body.empbasic,
        empagp:req.body.empagp,
        empspl:req.body.empspl,
        empdoj:req.body.empdoj,
        empdob:req.body.empdob,
        empinc:req.body.empinc
    }
//alert(user.utype)
EMP_Office.findOrCreate({
    where: { empid: emp.empid },
    defaults: {
        empid:emp.empid,
        emptype:emp.emptype,
        emppan:emp.emppan,
        empaadhar:emp.empaadhar,
        empacno:emp.empacno,
        empbasic:emp.empbasic,
        empagp:emp.empagp,
        empspl:emp.empspl,
        empdoj:emp.empdoj,
        empdob:emp.empdob,
        empinc:emp.empinc
    }
  }).then(([user,reg])=>{
    
    res.send(reg)})
  .catch(err => {
    res.status(500).send("Error -> " + err);
  })
  };