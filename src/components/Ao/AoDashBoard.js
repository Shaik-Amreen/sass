import React ,{useEffect,useState}from 'react'
import Table from 'react-bootstrap/Table'
import {connect} from 'react-redux'
import {Link,Redirect,withRouter} from 'react-router-dom'
import { users } from '../../redux/actions/CasActions';
import {changeemp,addemp} from '../../redux/actions/EmpInfoActions';
import { leave,Leavech ,Createleave,reasonfacleave,leaveupdate, findempleaves} from '../../redux/actions/LeaveActions';
import { salary,Createsal,createoffice } from '../../redux/actions/SalaryActions';
import {DaFaculty,dafac} from '../../redux/actions/DaFacultyActions'
import { MDBContainer, MDBRow, MDBCol, MDBCard, MDBCardBody,  MDBBtn, MDBInput} from 'mdbreact';
import {  MDBIcon } from "mdbreact";
import Modal from 'react-bootstrap/Modal'
import "@fortawesome/fontawesome-free/css/all.min.css";
import './aostyles.css'
import Header from './Header'
import SideNav from './SideNav'
import { Button } from 'react-bootstrap';
function AoDashBoard(props) {
  const [button,setbutton]=useState(false)
    const [success,setsuccess]=useState(false)
    const [salaryprep,setSalaryprep]=useState(false)
    const [paybill,setPaybill]=useState(false)
    const[sea,setSea]=useState(false)
    const [dachange,setDachange]=useState(false)
    const [id,setid]=useState('')
    const[view,setView]=useState(false)
    const [daf,setDaf]=useState('')
    const [Add,setAdd]=useState('')
    const [Remove,setRemove]=useState('')
    const [al,setal]=useState('')
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
    const [from,setfrom]=useState(0);
    const [empid,setempid]=useState("")
    const [perleave,setperleave]=useState(false)
    const [removeemp,setremoveemp]=useState('')
    const [mix,setmix]=useState({empid:'' ,empname:'' ,
    empsname:''  ,empgen:'',empdes:'',empdept:'' ,empqua:'',empphno:'',empemail:'',status:'',emptype:'',
  emppan:'',empaadhar:'',empacno:'',empbasic:'',empagp:'',empspl:'',empdop:'',empinc:''})
    useEffect(()=>{
     props.user(props.location.state.user.un);
     props.leave(props.location.state.leave);
     props.salary(props.location.state.salary);





    props.dafac(props.location.state.DaFaculty);
    props.getemple(props.location.state.getemple);
    },[]);
    
   let imp=[],b=[],h=0,salar=[],k=0,a=0,totalsalary=0,Hra=[],Da=[],sal,reasons;
   var tempDate = new Date();
  var dates = tempDate.getDate()+ '-' + (tempDate.getMonth()+1) + '-' +   tempDate.getFullYear();
  var today=tempDate.getDate()
  var todate = tempDate.getFullYear()+ '-' + (tempDate.getMonth()+1) + '-' +   tempDate.getDate();
    let mad = Object.values(props.us);
    const ma= Object.values(props.le);
    const permis=Object.values(props.getempleaves);
    console.log(permis)
    const m= Object.values(props.sa);
    const n= Object.values(props.da);
    const salari= Object.values(props.Salar);
     var alldas = n.map(function (val) {
      return val.da;
  });
  
  
console.log(mad)

     let lastda=alldas[alldas.length-1]
     lastda=parseInt(lastda)
     console.log(lastda)
     var alldates = n.map(function (val) {
      return val.date;
  });
  mad = mad.filter(word => word.status==="working");

  {permis.map((emp,i)=>(
    (emp.applied==="")?<>
  {imp.push(emp)}
</>:null
))} 

  
    
     let lastdate=alldates[alldates.length-1]
    

    const handleSubmit=(e)=>{
    
      e.preventDefault()
    
      const user={
          date:dates,
          da:daf,
      }
      props.DaFaculty(user)
  
      
      setDaf("")
      setDachange(false)
     }
     const hide=()=>{
       setAdd(false)
     }
  






      const addemps=()=>{
        if(mix.empid===""||mix.empname===""||mix.empsname===""||mix.emqua===""
      ||mix.empphno===""||mix.empemail==="")
      {alert("you have to enter all the input fields")}
      else{
        mix.empdes=document.getElementById("designation").value;
        mix.empdept=document.getElementById("branch").value;
        mix.empgen=document.getElementById("gender").value;
        mix.emptype=document.getElementById("type").value;
        setmix(mix);
console.log(mix)
        let sal={
          empid:mix.empid,
          empname:mix.empname,
          empsname:mix.empsname,
          empgen:mix.empgen,
          empdes:mix.empdes,
          empdept:mix.empdept,
          empqua:mix.empqua,
          empphno:mix.empphno,
           empemail:mix.empemail,
           status:"working"
         }
         let leave={
          empid:mix.empid,
          empcls:15,
          empels:15,
          empvac:28,
          empml:0,
          emplop:0
        }
        let office={
         empid:mix.empid,
         emptype:mix.emptype,
         emppan:mix.emppan,
         empaadhar:mix.empaadhar,
         empacno:mix.empacno,
         empbasic:mix.empbasic,
         empagp:mix.empagp,
         empspl:mix.empspl,
         empdoj:todate,
         empdop:mix.empdop,
         empinc:mix.empinc
        }
        console.log(office)
        props.createoffice(office)
        props.createleave(leave)
         props.addemp(sal)
         alert("registered successfully")
         setAdd(false)}
      }
console.log(todate)


       const change=()=>{
         let emp={
          empid:removeemp,
          status:"dropped"
           }
           console.log(emp)
           props.changeemp(emp)
           setRemove(false)
           setremoveemp('')
          
       }

    
    const submit=()=>{
      setal(false)
      setsuccess(true)
      
      var x = document. getElementById("mydate"). value;
      var selectedValue = document.getElementById("list").value;
     setvalue(selectedValue);
     var one = document.getElementById("leave1").value;
     var two = document.getElementById("leave2").value;
     if(one==="AM"&&two==="PM")
     {setleaves(date_diff_indays(from, to));}
     else{setleaves(date_diff_halfdays(from,to)+0.5)}
     mad.map(emp=>(
      ma.map((em,i)=>(
      (emp.empid===em.empid && emp.empid===id)?<>
      {rea.empname=emp.empname}
      { rea.empid=emp.empid}
      {rea.empdept = emp.empdept}
      {rea.empdes =emp.empdes}
      {rea.type=value}
      {rea.from=from+one}
      {rea.to=to+two}
      {rea.days=leaves}
      
{setrea(rea)}
</>:null))))
    
      switch (value) {
        case 'empcls':
if(cls-leaves>=0){
        const user={
          empid:id,
          empcls:cls-leaves,
          empels:els,
          empvac:vac}
        reasons={
          empid:rea.empid,
          empname:rea.empname,
          empdept:rea.empdept,
          empdes:rea.empdes,
          type:rea.type,
          from:rea.from,
          to:rea.to,
          days:rea.days,
          reason:reason
          }
  props.reasonforleave(reasons)
      props.changeleave(user)}
      else{
        alert(`you have 0nly ${cls} CLs`)
      }
          break;
        case 'empels':
if(els-leaves>=0){
       const elss={
          empid:id,
          empcls:cls,
          empels:els-leaves,
          empvac:vac
      }
      reasons={
        empid:rea.empid,
        empname:rea.empname,
        empdept:rea.empdept,
        empdes:rea.empdes,
        type:rea.type,
        from:rea.from,
        to:rea.to,
        days:rea.days,
        reason:reason
        }
props.reasonforleave(reasons)
      props.changeleave(elss) }
      else{
        alert(`you have only ${els} days`)
      }
          break;
        case 'empvac':
        if(vac-leaves>=0){
        const vacss={
          empid:id,
          empcls:cls,
          empels:els,
          empvac:vac-leaves
      }
      reasons={
        empid:rea.empid,
        empname:rea.empname,
        empdept:rea.empdept,
        empdes:rea.empdes,
        type:rea.type,
        from:rea.from,
        to:rea.to,
        days:rea.days,
        reason:reason
        }
props.reasonforleave(reasons)

      props.changeleave(vacss)}
      else{
        alert(`you have only ${vac} VACATION LEAVES`)
      } 
          break;
      }}




 







    





   
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
  
    //alert(user.utype);
  let emp;
const acceptleave=()=>{
 let temp= document.getElementById("accept").value
 console.log(temp)
  permis.map(perm=>(
    (perm.applied===""&& perm.empid===temp)?<>
  {emp={

applied: "APPROVED",
 empid:perm.empid,
  days:perm.days, 
  empdesn:perm.empdesn,
  empname:perm.empname,
  from:perm.from,
 leavetype:perm.leavetype,
 reason:perm.reason, 
  to: perm.to,
 appliedon:perm.appliedon,
 done:"pending"
}}
   {setempid(emp.empid)}
{perm.applied="approved"}
    </>
    :null
  ))
props.leaveupdate(emp)
}
let empl
const reject=(emp)=>{
  let temp= document.getElementById("reject").value
 console.log(temp)
  permis.map((perm,i)=>(
    (perm.applied===""&&perm.empid===temp)?<>
{empl={

applied: "REJECTED",
 empid:perm.empid,
  days:perm.days, 
  empdesn:perm.empdesn,
  empname:perm.empname,
  from:perm.from,
 leavetype:perm.leavetype,
 reason:perm.reason, 
  to: perm.to,
  appliedon:perm.appliedon,
  done:"pending"
}}
  {console.log(emp)}
{setempid(empl.empid)}
{perm.applied="rejected"}
    </>
    :null
  ))
  
props.leaveupdate(empl)
 
  }
const cancelper=()=>{
  setperleave(false)
}



















 try{
    if(props.location.state.ltype!=="ao")
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
    const show=()=>{setaview(true);
      mad.map(emp=>(
        ma.map((em,i)=>(
        (emp.empid===em.empid && emp.empid===id)?<>
        {setcls(em.empcls)}
        {setels(em.empels)}
        {setvac(em.empvac)}
        
        </>:null))))}
  const clss=()=>{
    setAdd(false)
    setRemove(false)
  }




   const butt=()=>{setbutton(true)}
    const changeda=()=>{setDachange(true)}
    const remove=()=>{setRemove(true)}
    const addnew=()=>{setAdd(true)}
    const leapl=()=>{setal(true)}
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
        console.log(date_diff_indays(from,to))
    return (



        <div className="container-flux">
        <br/>
        <Header name={props.location.state.user.un}/>
   <br/>




  














































 {(salaryprep===true)?
<Table >
<thead><tr>
<th>Id</th>
<th>Name</th>
<th>DEPARTMENT</th>
<th>Accountnum</th>
<th>SALARY</th>
</tr>
</thead>
<tbody>
{mad.map(hero=>(
            m.map((her,i)=>(
(hero.id===her.id)?<>
{(i%20===0&&i>0)?<><tr>
    <td/><td/><td/><td/>
    <td><h5>PageTotal : {salar[h]}</h5></td></tr>{add()}</>:null}
<tr>
<td>{ hero.empid}</td>
<td>{ hero.empname}</td>
<td>{ hero.empdept}</td>
<td>{her.empacno}</td>
<td>{b[i]}</td>
</tr>

{(i===m.length-1&&h!==salar.length)?<>
<tr><td/><td/><td/><td/>
    <td><h5>PageTotal : {salar[salar.length-1]}</h5></td></tr>
    <tr><td/><td/><td/><td/>
    <td><h5>TOTALSALARY: {totalsalary}</h5></td></tr>
    </>:null}
</>:null))))}
 </tbody>
</Table>  
  :null}

    
    
        
   <Modal show={perleave} onHide={cancelper}>
    <div class="card border-silver  col-sm-12">
    {console.log(empid)}
    {permis.map((emp,i)=>(
        (emp.applied===""&&emp.empid!==empid)?<>
         {console.log(emp)}
    {emp.empname} [{emp.empdesn}] of id {emp.empid}
    applied {emp.leavetype} leave from {emp.from} to {emp.to}
     for {emp.days} days
      <MDBBtn color="primary" value={emp.empid} id="accept"onClick={acceptleave} >ACCEPT</MDBBtn>&nbsp;&nbsp;
      
     <MDBBtn color="primary" value={emp.empid} id="reject" onClick={reject}>REJECT</MDBBtn>
    </>:null
    ))} <MDBBtn color="primary" onClick={cancelper}>CLOSE</MDBBtn></div>
  </Modal>
  <div class="card border-silver  col-sm-12">
  <br/>
   <MDBBtn onClick={()=>{setperleave(true)}}>
   <strong>CHECK TODAYS LEAVES</strong></MDBBtn> <br/></div>
       

{(paybill===true)?
    
      mad.map(emp=>(
m.map((em,i)=>(
(emp.id===em.id)?<>
<br/>
<div  ><br/>
<h4>ANNAMACHARYA INSTITUTE OF TECHNOLOGY</h4><br/>
<div class="card border-silver col-sm-12">
<Table>
  <tr><td>NAME : {emp.empname}</td>
<td>ID : {emp.empid}</td>
<td>DEPARTMENT : {emp.empdept}</td>
<td>ACCOUNTNUM : {em.empacno}</td></tr>


  <td>
   HRA : {Hra[i]}<br/><br/>
  BASIC : {em.empbasic}<br/><br/>

DA : {Da[i]}<br/><br/>
 <strong> GROSS SALARY : </strong>{b[i]}</td>
  <td></td>
  <td></td>
  <td>LIC :<br/><br/>
  PTAX :<br/><br/>
  OTHER :</td></Table></div></div></>
:null)))):null}

<br/>

{(salaryprep===false&&paybill===false)?<>
<form class="form-inline justify-content-center">
<div class="card border-silver  col-sm-5">
<br/>
<MDBBtn onClick={leapl}><strong>APPLY LEAVE</strong></MDBBtn><br/>
{(al===true)?
            <form class="form-inline justify-content-center">
            <br/>
            <input className="form-control form-control-sm ml-3 w-75" type="text"
   placeholder="Search" aria-label="Search" 
        onChange={handleChange}/>&nbsp;
  
        <MDBBtn color="primary" onClick={show}>  <MDBIcon icon="search"/></MDBBtn><br/><br/> <br/></form>
        
        :null}
       
     {(aview===true)?
     <>{ mad.map(emp=>(
        ma.map((em,i)=>(
        (id===emp.empid&&id===em.empid)?
  <div>
  <table class="table">
<tbody>
    <tr><td>ID</td><td>:</td><td>{emp.empid}</td></tr>
<tr><td>NAME</td><td>:</td><td>{emp.empname}</td></tr>
<tr><td>DEPARTMENT</td><td>:</td><td>{emp.empdept}</td></tr>
</tbody>
</table>
<div className="leave">
   <form class="form-inline justify-content-center">
   <strong style={{color:'#0084ff'}}>TYPE OF LEAVE : </strong>&nbsp;
   <select class="form-control" id="list" >
              <option value="empcls">CL's</option>
              <option value="empels">EL's</option>
              <option value="empvac">VACATION</option>
   </select>
   </form>
   <br/>
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
            
              <textarea  rows="3" onChange={(e)=>setreason(e.target.value)} placeholder="ENTER YOUR REASON"></textarea>
  </div><br/>
  <form class="form-inline justify-content-center">
    <MDBBtn color="primary" onClick={submit} style={{ width:"34%"}}>SUBMIT </MDBBtn> 
  </form><br/></div>
:null))))}

   
  </>:null}</div>
  
  
&nbsp;&nbsp;&nbsp;


<div class="card border-silver col-sm-5">
<br/>
<form class="form-inline justify-content-center">
<MDBBtn onClick={addnew}><strong> ADD EMPLOYEE</strong></MDBBtn>
            <MDBBtn onClick={remove}><strong style={{color:"#f5073c"}}> REMOVE EMPLOYEE</strong></MDBBtn>
            </form><br/>
          </div></form>
      <br/>
    


<Modal show={Remove} onHide={change}>

<br/><br/>
<form class="form-inline justify-content-center">
<input type="text" className="form-control form-control-sm ml-3 w-75" required value={removeemp}
                 onChange={(e)=>{setremoveemp(e.target.value)}} placeholder="empid"/><br/>&nbsp;&nbsp;
        <MDBBtn onClick={butt} style={{width:'25'}}color="primary">SEARCH
        </MDBBtn></form>
        <br/>
        {console.log(removeemp)}
        {(button===true)?<>
{mad.map(e=>(
(e.empid===removeemp)?
<div style={{textAlign:"center", fontWeight:'700'}}>
<table class="table" style={{color:'#f5073c'}}>
<tr>NAME <td>: </td>&nbsp;&nbsp;{e.empname}<br/></tr>
<tr>DESIGNATION&nbsp;&nbsp; <td>: </td>{e.empdes}<br/></tr>
<tr>DEPARTMENT&nbsp;&nbsp;<td> :</td> {e.empdept}<br/></tr></table></div>
:null
))}

      </>:null}
      <form class="form-inline justify-content-center">
            <MDBBtn onClick={change} color="danger" style={{ width:"32%"}}>REMOVE</MDBBtn>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <MDBBtn  color="primary" onClick={clss} style={{ width:"32%"}}>CLOSE</MDBBtn>   </form> 
       
  </Modal>


<Modal show={Add} onHide={hide}>
<div class="card border-white  col-sm-12">

<div className="data">
<br/><br/>

  <label>Employee ID</label>
<input type="text" className="form-control" 
  onChange={(e)=>{mix.empid=e.target.value}} placeholder="employee id"/>
<br/>
  <label>Full name</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empname=e.target.value}} placeholder="empname"/><br/>
<label>Short_name</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empsname=e.target.value}} placeholder="empsname"/><br/>
<label>Gender</label> <select id="gender" className="form-control" >
  <option value="f">FEMALE</option>
  <option value="m">MALE</option>
  <option value="o">OTHER</option></select> 
  <br/>
  <label>Designation</label> <select id="designation" className="form-control" >
  <option value="PRINCIPAL">PRINCIPAL</option>
  <option value="VICE PRINCIPAL">VICE PRINCIPAL</option>
  <option value="Professor">Professor</option>
<option value="Asst.Prof">Asst.Prof</option></select>
<br/><label>Branch</label> 
<select id="branch" className="form-control" >
  <option value="CSE">CSE</option>
  <option value="ECE">ECE</option>
  <option value="EEE">EEE</option>
  <option value="CIV">CIVIL</option>
  <option value="HS">HS</option>
  <option value="CIT">CIT</option>
  <option value="MBA">MBA</option>
  <option value="MEC">CIT</option></select><br/>
  <label>Qualification</label>  <input type="text" className="form-control" 
  onChange={(e)=>{mix.empqua=e.target.value}} placeholder="empqua"/><br/>
 <label>Mobile Num</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empphno=e.target.value}} placeholder="empphno"/><br/>
<label>Email</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empemail=e.target.value}} placeholder="empemail"/><br/>
  <label>TYPE</label> <select id="type" className="form-control" >
  <option value="scale">Scale</option>
  <option value="cons">CONS</option></select> 
  <br/>
<label>PAN Num</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.emppan=e.target.value}} placeholder="pan-number"/><br/>
<label>Aadhar Number</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empaadhar=e.target.value}} placeholder="aadhar-number"/><br/>
<label>Account Number</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empacno=e.target.value}} placeholder="Account num"/><br/>
<label>Basic</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empbasic=e.target.value}} placeholder="empbasic"/><br/>
<label>agp</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empagp=e.target.value}} placeholder="empagp"/><br/>
<label>spl</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empspl=e.target.value}} placeholder="empspl"/><br/>
<label>dop</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empdop=e.target.value}} placeholder="empdop"/><br/>
<label>Income</label> <input type="text" className="form-control" 
  onChange={(e)=>{mix.empinc=e.target.value}} placeholder="empinc"/><br/>











          <form class="form-inline justify-content-center">    
           <MDBBtn  color="primary" onClick={addemps} style={{ width:"32%"}}>ADD</MDBBtn>
&nbsp;&nbsp;
<MDBBtn  color="danger" onClick={clss} style={{ width:"32%"}}>CLOSE</MDBBtn>        
     
</form>
        
        
        
        </div>

               </div>  
        
       
        
        
        
        

        
        
        
        
        
       
  </Modal>


<form class="form-inline justify-content-center">
    <div class="card border-silver col-sm-5">
    <br/>
            <MDBBtn onClick={changeda}><strong>CHANGE DA</strong></MDBBtn>
            <form class="form-inline justify-content-center">
            
            {(dachange===true)?
               
               <>
               <br/><br/><br/>
                <input type="text" className="form-control form-control-sm ml-3 w-75" required value={daf}
                 onChange={(e)=>{setDaf(e.target.value)}} placeholder="ENTER DA PERCENTAGE"/>
                &nbsp;
                <MDBBtn onSubmit={(e)=>handleSubmit(e)} color="primary">SUBMIT</MDBBtn></>
               :null}</form>
               <br/>
          </div>
          &nbsp;&nbsp;&nbsp;&nbsp;





          <div class="card border-silver col-sm-5">
          <br/>
          <MDBBtn onClick={pays}><strong>PAYBILL</strong></MDBBtn><br/>
          </div>
        
       </form>
       <br/>





       <form class="form-inline justify-content-center">
       {(today===26)?
    <div class="card border-silver col-sm-5">
          <br/>
            <MDBBtn onClick={salary}><strong>SALARY PREPARATION</strong></MDBBtn>
         <br/> </div>:null}
<br/>





          <div class="card border-silver col-sm-5">
          <br/>
          <MDBBtn onClick={search}><strong>SEARCH FOR EMPLOYEE</strong></MDBBtn><br/>
          {(sea===true)?
    <>
     <form className="form-inline mt-4 mb-4">
      
        <input className="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search" aria-label="Search" 
        onChange={handleChange}/>&nbsp;&nbsp;
        <MDBBtn color="primary" onClick={shows}>  <MDBIcon icon="search" /></MDBBtn> 
      </form>
   </>:null}{(view===true)?
    mad.map(emp=>(
        m.map((em,i)=>(
        (id===emp.empid&&id===em.empid)?
    <table class="table">
<tr><td>Id</td><td>:</td><td>{emp.empid}</td></tr>
<tr><td>Name</td><td>:</td><td>{emp.empname}</td></tr>
<tr><td>DEPARTMENT</td><td>:</td><td>{emp.empdept}</td></tr>
<tr><td>Accountnum</td><td>:</td><td>{emp.empdept}</td></tr>
<tr><td>BASIC</td><td>:</td><td>{em.empbasic}</td></tr>
<tr><td>HRA</td><td>:</td><td>{Hra[i]}</td></tr>
<tr><td>DA</td><td>:</td><td>{Da[i]}</td></tr>
<tr><td>SALARY</td><td>:</td><td>{b[i]}</td></tr>
</table>:null)))):null}
          </div></form></>
    :null}
    

    
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
      applyleave:state.applyleave,
     getempleaves:state.getempleaves,
     empinfo:state.empinfo,
     addeemp:state.addeemp,
     createl:state.createleave,
     createoff:state.createoffice
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
    getemple:findempleaves,
    leaveupdate:leaveupdate,
    changeemp:changeemp,
    addemp:addemp,
    createleave:Createleave,
    createoffice:createoffice
      }
export default connect(mapStateToProps,mapActionToProps)(withRouter(AoDashBoard)) 
