module.exports = function(app) {
 
    const Emp_Info = require('../controllers/EmpInfoController');
    const Emp_Leave = require('../controllers/EmpLeaveController');
    const   EMP_Office= require('../controllers/EmpSalaryController');
    const DaFaculty=require('../controllers/DaFacultyController')
    const Salary=require('../controllers/SalaryController');
    // Create a new user
    app.post('/createmp', Emp_Info.create);
  //Login user
   app.post('/empinfo',Emp_Info.empinfo)
    // Retrieve all users
    app.get('/emps', Emp_Info.findAll);
 //Retrieve leaves
 app.get('/leave', Emp_Leave.findAll);

 app.post('/createleave', Emp_Leave.createleave);

 app.post('/createoffice',EMP_Office.createoffice)

 app.get('/reason', Emp_Leave.findleave);
 //Retrieve leaves of single user by id
 app.post('/getempleave/:empname',Emp_Leave.getemplea);

//Retieve all users salaries
app.get('/salary',  EMP_Office.findAll);
    // Retrieve a single user by Id
    app.post('/empname/:empname', Emp_Info.findByname);
   
    // Update a user with Id
    app.post('/emp', Emp_Info.update);
 
    // Delete a user with Id
    app.delete('/empdel/:empid', Emp_Info.delete);

     app.get('/findempleaves',Emp_Leave.findempleaves)

    app.get('/da',  DaFaculty.findAll);

    app.get('/clgsalary',  Salary.findAll);

    app.post('/createsalary',  Salary.create);

    app.post('/applyleave',Emp_Leave.applyl);
    
    app.post('/dacreate', DaFaculty.create);

    app.post('/leachan/:empid',Emp_Leave.update);

    app.post('/postreason',Emp_Leave.create)

    app.post('/leaveupdate/:empid',Emp_Leave.leaveupdate);
}