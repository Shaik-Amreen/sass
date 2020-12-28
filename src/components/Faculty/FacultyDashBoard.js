import React,{useState,useEffect} from 'react'
import {connect} from 'react-redux'
import {facdisp} from '../../redux/actions/CasActions'
import {Link,Redirect,withRouter} from 'react-router-dom'
import { users } from '../../redux/actions/CasActions';
import { leave,Leavech ,reasonfacleave, getempleave,leaveupdate, applyingleave,findempleaves} from '../../redux/actions/LeaveActions';
import { salary,Createsal } from '../../redux/actions/SalaryActions';
import {DaFaculty,dafac} from '../../redux/actions/DaFacultyActions'
import {  MDBIcon ,  MDBBtn} from 'mdbreact';
import "@fortawesome/fontawesome-free/css/all.min.css";
import Header from './Header'
import SideNav from './SideNav'
import Modal from 'react-bootstrap/Modal'
import './facultystyles.css'
function FacultyDashBoard(props) {
    const [viewprof,setviewprof]=useState(false)
    const [success,setsuccess]=useState(false)
    const [salaryprep,setSalaryprep]=useState(false)
    const [paybill,setPaybill]=useState(false)
    const[sea,setSea]=useState(false)
    const [noon,setnoon]=useState('')
    const [id,setid]=useState('')
    const[view,setView]=useState(false)
    const [daf,setDaf]=useState('')
    const [Add,setAdd]=useState('')
    const [al,setal]=useState({})
    const [aview,setaview]=useState('')
    const [cs,setCs] =useState({empid:'' ,empname:'' ,
    empda:''  ,empdept:'',empaccno:'',empbasic:'' ,emphra:'',empsalary:'',empdate:''})
    const [rea,setrea] =useState({empid:'' ,empname:'' ,
    empdept:'',empdes:'',type:'',from:'' ,to:'',days:''})
    const [reason,setreason]=useState('')
    const [leaves,setleaves]=useState(0);
    const [cls,setcls]=useState('')
    const [els,setels]=useState('')
    const [vac,setvac]=useState('')
    const [value,setvalue]=useState('')
    const [to,setto]=useState(0)
    const [from,setfrom]=useState(0)
    const [noon2,setnoon2]=useState('')
    const[cancell,setcancell]=useState(false)
    const [show, setShow] = useState(false);
    const[find,setfind]=useState(false)
    const[permission,setpermission]=useState(true)
    useEffect(()=>{
     props.user(props.location.state.user.un);
     props.leave(props.location.state.leave);
     props.salary(props.location.state.salary);
    props.dafac(props.location.state.DaFaculty);
    props.getempleave(props.location.state.user.un)
    props.EmpInfo(props.location.state.user.un);
    props.getemple(props.location.state.getemple);
    },[]);
    
   let b=[],h=0,salar=[],k=0,a=0,totalsalary=0,Hra=[],Da=[],sal,reasons,findmyleave=[];
   var tempDate = new Date();
  var dates =tempDate.getFullYear() +'-'+ (tempDate.getMonth()+1) + '-' +   tempDate.getDate()
  var today=tempDate.getDate()
   console.log(dates)
    const mad = Object.values(props.us);
    const ma= Object.values(props.le);

    const m= Object.values(props.sa);
    const n= Object.values(props.da);
    const salari= Object.values(props.Salar);
     var alldas = n.map(function (val) {
      return val.da;
  });
     let lastda=alldas[alldas.length-1]
     lastda=parseInt(lastda)
     console.log(lastda)
     var alldates = n.map(function (val) {
      return val.date;
  });
 
  const permis=Object.values(props.getempleaves);
   
  


     let lastdate=alldates[alldates.length-1]
    const handleSubmit=(e)=>{
    
      e.preventDefault()
    
      const user={
          date:dates,
          da:daf,
      }
      props.DaFaculty(user)
  
      
      setDaf("")
      
     }

    const submit=()=>{
     
    setnoon( document.getElementById("leave1").value);
       setnoon2(document.getElementById("leave2").value);
      if(noon==="AM"&&noon2==="PM")
      {setleaves(date_diff_indays(from, to));}
      else{setleaves(date_diff_halfdays(from,to)+0.5)}
   var selectedValue = document.getElementById("list").value;
     setvalue(selectedValue);
     console.log("subbbbbbbbbbbbmmmmmittttttttt")
  if(leaves<0){alert("CHECK DATES")}else{
    setsuccess(true);
    setShow(false)}}
  

 const pre=()=>{
  switch (value) {
    case 'empcls':
if(cls-leaves>=0){
    reasons={
      empid:props.Emp.empid,
      empname:props.Emp.empname,
      empdesn:props.Emp.empdes,
      leavetype:value,
      from:from+noon,
      to:to+noon2,
      days:leaves,
      reason:reason,
      applied:"",
      appliedon:dates,
      done:"pending"
      }
 props.appleave(reasons)
 

setsuccess(false) 
}
  else{
    alert(`you have 0nly ${cls} CLs`)
  }
      break;
    case 'empels':
if(els-leaves>=0){
  reasons={
    empid:props.Emp.empid,
    empname:props.Emp.empname,
    empdesn:props.Emp.empdes,
    leavetype:value,
    from:from+noon,
    to:to+noon2,
    days:leaves,
    reason:reason,
    applied:"",
    appliedon:dates,
    done:"pending"
    }
props.appleave(reasons)
 
    
  setsuccess(false)

}
  else{
    alert(`you have only ${els} days`)
  }
      break;
    case 'empvac':
    if(vac-leaves>=0){
  reasons={
    empid:props.Emp.empid,
    empname:props.Emp.empname,
    empdesn:props.Emp.empdes,
    leavetype:value,
    from:from+noon,
    to:to+noon2,
    days:leaves,
    reason:reason,
    applied:"",
    appliedon:dates,
    done:"pending"
    }
props.appleave(reasons)

  
   setsuccess(false)}
  else{
    alert(`you have only ${vac} VACATION LEAVES`)
  } 
      break;
  }

 }

const checkmyleave=()=>{
setfind(true)}  
permis.map(me=>(
(me.empid===props.Emp.empid)?
findmyleave.unshift(me):null
))
console.log(findmyleave)


const close=()=>{
  setfind(false)
}
const final=(hero)=>{
  hero.done="done"
  props.leaveupdate(hero)
  switch (hero.leavetype) {

    case 'empcls':
if(props.getleave.empcls-hero.days>=0){
    const user={
      empid:props.Emp.empid,
      empcls:props.getleave.empcls-hero.days,
      empels:props.getleave.empels,
      empvac:props.getleave.empvac}
      reasons={
        empid:props.Emp.empid,
        empname:props.Emp.empname,
        empdept:props.Emp.empdept,
        empdes:props.Emp.empdes,
        type:hero.leavetype,
        from:hero.from,
        to:hero.to,
        days:hero.days,
        reason:hero.reason
        }
        console.log(user)
 props.reasonforleave(reasons)
  props.changeleave(user)

setsuccess(false) 
}
  else{
    alert(`you have 0nly ${cls} CLs`)
  }
      break;
    case 'empels':
if(props.getleave.empels-hero.days>=0){
   const elss={
    empid:props.Emp.empid,
    empcls:props.getleave.empcls,
    empels:props.getleave.empels-hero.days,
    empvac:props.getleave.empvac}
    reasons={
      empid:props.Emp.empid,
      empname:props.Emp.empname,
      empdept:props.Emp.empdept,
      empdes:props.Emp.empdes,
      type:hero.leavetype,
      from:hero.from,
      to:hero.to,
      days:hero.days,
      reason:hero.reason
      }
props.reasonforleave(reasons)
  props.changeleave(elss)
  
  setsuccess(false)

}
  else{
    alert(`you have only ${els} days`)
  }
      break;
    case 'empvac':
    if(props.getleave.empvac-hero.days>=0){
    const vacss={
      empid:props.Emp.empid,
      empcls:props.getleave.empcls,
      empels:props.getleave.empels,
      empvac:props.getleave.empvac-hero.days
  }
  reasons={
    empid:props.Emp.empid,
    empname:props.Emp.empname,
    empdept:props.Emp.empdept,
    empdes:props.Emp.empdes,
    type:hero.leavetype,
    from:hero.from,
    to:hero.to,
    days:hero.days,
    reason:hero.reason
    }
   
props.reasonforleave(reasons)

  props.changeleave(vacss)
  setpermission(false)
   setsuccess(false)}
  else{
    alert(`you have only ${vac} VACATION LEAVES`)
  } 
      break;
  }

}


permis.map(hero=>(
  (hero.empid===props.Emp.empid&&hero.applied==="APPROVED"&&hero.appliedon===dates&&permission===true&&hero.done==="pending")?
  final(hero):null))
  

   
      let l=m.length;
    m.map(salary=>{
        let hra=salary.empbasic*(7/100);
        let hr=hra.toFixed(3);
        Hra.push(hr)
       
        let da=salary.empbasic*lastda/100
               Da.push(da)
        let a=salary.empbasic+hra+da;
               b.push(a)
    })
  
   
  





    try{
        if(props.location.state.ltype!=="f")
        {
            alert("not logged")
            
        }}
        catch(error){
            alert("notlogged")
            props.history.push('/')
        }

        
for(let j=0;j<mad.length;j++){
     a=a+b[j];k++;
     totalsalary=totalsalary+b[j]
    
    if(k===20||j===mad.length-1){salar.push(a);

    a=0;k=0}
}

    const salary=()=>{setSalaryprep(true);
     mad.map(emp=>(
m.map((em,i)=>(
(emp.id===em.id)?<>
 {
   cs.empname=emp.empname}

 { cs.empid=emp.empid}
{cs.empdept = emp.empdept}
{cs.empaccno =em.empacno}
  {cs.emphra= Hra[i]}
{cs.empbasic = em.empbasic}

{cs.empda=Da[i]}
{cs.empsalary=b[i]}
{setCs(cs)}
{ sal={
        empid:cs.empid,
        empname:cs.empname,
        empda:cs.empda,
        empdept:cs.empdept,
        empaccno:cs.empaccno,
        empbasic:cs.empbasic,
        emphra:cs.emphra,
        empsalary:cs.empsalary,
         empdate:lastdate }

        }{console.log(sal)}{props.create(sal)}</>:null))))
  }
    const add=()=>{h=h+1;}
    const pays=()=>{setPaybill(true)}
    const search=()=>{setSea(true)}
    const handleChange=(e)=>{ setid(e.target.value); 
     
        e.preventDefault();
       
            
      
      
      
      
      }
   const  shows=()=>{
     setView(true)
   }
    const shooww=()=>{setShow(true);
        {setid(props.Emp.empid)}
        {setcls(props.getleave.empcls)}
        {setels(props.getleave.empels)}
        {setvac(props.getleave.empvac)}
        
      }
     console.log(els)
        
  
    const remove=()=>{setAdd(true)}
 
    const date_diff_indays =(date1, date2)=>{
      let dt1 = new Date(date1);
      let dt2 = new Date(date2);
      return Math.floor((Date.UTC(dt2.getFullYear(), dt2.getMonth(), dt2.getDate()) - 
      Date.UTC(dt1.getFullYear(), dt1.getMonth(), dt1.getDate()) ) /(1000 * 60 * 60 * 24)+1);
      }
     
      const date_diff_halfdays =(date1, date2)=>{
        let dt1 = new Date(date1);
        let dt2 = new Date(date2);
        return Math.floor((Date.UTC(dt2.getFullYear(), dt2.getMonth(), dt2.getDate()) - 
        Date.UTC(dt1.getFullYear(), dt1.getMonth(), dt1.getDate()) ) /(1000 * 60 * 60 * 24));
        }
        

const cancel=()=>{
  setsuccess(false);
  setcancell(true)
}

const cancelleave=()=>{setcancell(false)}
const viewprofile=()=>{setviewprof(true)}
const novie=()=>{setviewprof(false)}
    return (



        <div className="container-flux">
        <br/>
      
   <Header name={props.Emp.empname}/>
   <SideNav/>
   <br/>
   
   <form class="form-inline justify-content-center">
   <div class="card border-silver  col-sm-5">
   <div style={{padding:'2.7%'}}>
<br/>
<MDBBtn onClick={viewprofile}><strong>VIEW PROFILE</strong></MDBBtn>
</div><br/>
    </div>
&nbsp;&nbsp;&nbsp;
<div class="card border-silver  col-sm-5">
<br/>
<MDBBtn onClick={shooww}><strong>APPLY LEAVE</strong></MDBBtn>
<div className="lea">
   CLS : <span>{props.getleave.empcls}</span>&nbsp;&nbsp;
   ELS : <span>{props.getleave.empels}</span>&nbsp;&nbsp;
  VACATION:<span>{props.getleave.empvac}</span>
                 </div>
       <br/>
    </div>
</form><br/>
<form class="form-inline justify-content-center">
   <div class="card border-silver  col-sm-5">
   <div style={{padding:'2.7%'}}>
<br/>
<MDBBtn onClick={checkmyleave}><strong>CHECK MY LEAVE</strong></MDBBtn>
</div><br/>
    </div>
&nbsp;&nbsp;&nbsp;

</form>
      <br/>
           
            <div className="container-lg" >
            <div className="row">
              <div className="col-6"> 
                <div className="card">
                <div className="card-body">
                    EMP profile
                    {props.Emp.empname}{props.Emp.empdept}
                </div>

                </div>
              </div>
    
    
              <div className="col-6"> 
              <div className="card">
                <div className="card-body">
                    EMP ATTAndance POST
                </div>

                </div>
              </div>
              <div className="col-6"> 
              <div className="card">
                <div className="card-body">
                    Emp tt
                </div>

                </div>
              </div>
              
            </div>

            
            <div className="row">
            <div className="col-4"> 
              <div className="card">
                <div className="card-body">
                    Emp tt
                </div>

                </div>
              </div>
              <div className="col-4"> 
              <div className="card">
                <div className="card-body">
                    assign ments to students
                </div>

                </div>
              </div>
              <div className="col-4"> 
              <div className="card">
                <div className="card-body">
                    Notices 
                </div>

                </div>
              </div>
            </div>
            <div className="row">
           <div className="col">
           <div className="card">
  <h5 className="card-header">Research/professional growth</h5>
  <div className="card-body">
    <h5 className="card-title">Special title treatment</h5>
    <p className="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="#" className="btn btn-primary">Go somewhere</a>
  </div>
</div>

</div>            </div>
            </div>
           <span style={{color:"red"}}>copyRight BY SASS</span>
        


<Modal show={viewprof} onHide={novie} >
<div class="card border-white  col-sm-12">
<br/><br/>
<div className="data">
<table class="table">
<tr style={{ color: '#f5073c'}}><td>ID</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empid}</td></tr><tr style={{ color: '#f5073c'}}>
<td >SHORT_NAME</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empsname}</td></tr>
<tr style={{ color: '#f5073c'}}><td >NAME</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empname}</td></tr><tr style={{ color: '#f5073c'}}>
<td >QUALIFICATION</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empqua}</td></tr>
<tr style={{ color: '#f5073c'}}><td >GENDER</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empgen}</td></tr><tr style={{ color: '#f5073c'}}>
<td >DEPARTMENT</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empdept}</td></tr>
<tr style={{ color: '#f5073c'}}><td >DESIGNATION</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empdes}</td></tr><tr style={{ color: '#f5073c'}}>
<td >PHONE_NUM</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empphno}</td></tr>
<tr style={{ color: '#f5073c'}}><td >EMAIL</td><td>:</td>
<td style={{  color:'#2b5797'}}>{props.Emp.empemail}</td></tr>
<br/><br/></table>
<MDBBtn  style={{ width:"34%",backgroundColor:'#f5073c',color:'white'}}  onClick={novie} >CLOSE </MDBBtn>
 <br/><br/>
</div>
  </div>
       <br/></Modal>




    




    <Modal show={show} onHide={final}>
<div className="leave">
<br/>
   <form class="form-inline justify-content-center">
   <strong style={{color:'#0084ff'}}>TYPE OF LEAVE : </strong>&nbsp;
   <select class="form-control" id="list" >
              <option value="empcls">CL's</option>
              <option value="empels">EL's</option>
              <option value="empvac">VACATION</option>
   </select> </form><br/>
   <form class="form-inline justify-content-center">
   <br/><br/>
   <input id="mydate" type="date" className="form-control form-control-sm ml-3 w-75" 
  onChange={(e)=>{setfrom(e.target.value)}} placeholder="DAYS"></input>
  <select className="select" id="leave1">
              <option value="AM">AM</option>
              <option value="PM">PM</option></select>
              </form>
              <form class="form-inline justify-content-center">
  <input id="mydate" type="date" className="form-control form-control-sm ml-3 w-75" 
  onChange={(e)=>{setto(e.target.value)}} placeholder="DAYS"></input><br/>
  <select className="select" id="leave2">
              <option value="AM">AM</option>
              <option value="PM">PM</option></select></form>
            <br/>
   <textarea  rows="3"  onChange={(e)=>{setreason(e.target.value)}}
        placeholder="ENTER YOUR REASON"></textarea>
  </div><br/>
  <form class="form-inline justify-content-center">
    <MDBBtn color="primary" onClick={submit} style={{ width:"34%"}}>SUBMIT </MDBBtn>&nbsp;&nbsp;
    <MDBBtn color="primary" onClick={()=>{setShow(false)}} style={{ width:"34%"}}>CLOSE</MDBBtn>
  </form><br/>
</Modal>
 



<Modal show={find} onHide={close}>
   <div class="card border-silver  col-sm-12">
   <form class="form-inline justify-content-center" style={{textAlign:"center",color: '#2b5797',fontWeight:"700"}}>
   {(findmyleave.length===0)?<span style={{ color: '#f5073c'}}>YOU DID NOT APPLY ANY LEAVES TILL NOW</span>:
findmyleave.map(myleaves=>((myleaves.applied==="APPROVED")?
  <tr><td>
  APPLIED <span style={{ color: '#f5073c'}}> {myleaves.leavetype}</span> FROM 
  <span style={{ color: '#f5073c'}}> {myleaves.from}</span> TO <span style={{ color: '#f5073c'}}> {myleaves.to} </span>FOR 
  <span style={{ color: '#f5073c'}}> {myleaves.days}</span> DAYS --
  REASON:<span style={{ color: '#f5073c'}}>{myleaves.reason}</span><br/></td></tr>:null
))}<br/>
<MDBBtn color="primary" onClick={close} style={{ width:"34%"}}>CLOSE</MDBBtn></form>
</div></Modal>







 

 
  



    <Modal show={success} onHide={final}>
    
  <Modal.Body>
          YOUR LEAVE WILL BE APPLIED FROM <br/>{from} {noon} TO {to} {noon2} <br/>CLICK OK IF YOU AGREE
  </Modal.Body>
  <form class="form-inline justify-content-center">
       <MDBBtn color="primary" onClick={pre} style={{ width:"34%"}}>OK </MDBBtn>&nbsp;&nbsp;
       <MDBBtn color="primary" onClick={cancel} style={{ width:"34%"}}>CANCEL </MDBBtn> </form><br/>
</Modal>


 <Modal show={cancell} onHide={cancelleave}>
    
    <Modal.Body>
            YOUR LEAVE IS CANCELLED
    </Modal.Body>
    <MDBBtn color="primary" onClick={cancelleave} >OK </MDBBtn>
  </Modal>


    
        </div>
    )




    
   
    
   
           
    
}
const mapStateToProps=(state)=>{
    return {
      us:state.Users,
      le:state.Leave,
      sa:state.Salary,
      da:state.Da,
      Salar:state.Salar,
      Emp:state.Facinfo,
      getleave:state.leaveinfo,
      applyleave:state.applyleave,
      getempleaves:state.getempleaves
       }
  
}
const mapActionToProps={
    user:users,
    leave:leave,
    salary:salary,
    DaFaculty:DaFaculty,
    dafac:dafac,
    create:Createsal,
    changeleave:Leavech,
    reasonforleave:reasonfacleave,
    EmpInfo:facdisp,
    getempleave:getempleave,
    appleave:applyingleave,
    getemple:findempleaves,
    leaveupdate:leaveupdate
      }
export default connect(mapStateToProps,mapActionToProps)(withRouter(FacultyDashBoard)) 
