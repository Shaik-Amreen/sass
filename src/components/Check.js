import React,{useEffect,useState} from 'react'
import sh  from 'read-excel-file'
import second from 'read-excel-file'
import { MDBBtn } from 'mdbreact';
import cse2a from '../data/2csea.json'
function Check() {
    let test=[],result=[];
    let difference=[],di=[],res=[];
    let i,shdate;let [data,setdata]=useState([]);
    const[showabs,setShowabs]=useState([])
    const [showpre,setShowpre]=useState([])
    const[Dates,setDate]=useState([])
   useEffect(()=>{
const input = document.getElementById('input');
input.addEventListener("change",()=>{
    const file = document.getElementById('class').value;
    if(file==='cse2a'){data.push(...cse2a)}
    console.log(data,file,"hyyy")
    sh((input.files[0]), { getSheets: true }).then((sheets) => {
        sheets.forEach((obj)=>{
                shdate=obj.name;
                    Dates.push(obj.name)
                second((input.files[0]), { sheet: shdate }).then((cols)=>{
                    test=[]
               for(i=0;i<cols.length;i++){
                  test.push(cols[i][0])
                }
                test=[...new Set(test)]
                res=[];di=[]
                for(i=0;i<data.length;i++){
                    if(test.includes(data[i].name)) {res.push(data[i].rollno)}
                    else{di.push(data[i].rollno)}
                }
              res=res.sort();di=di.sort()
               result.push(res)
               difference.push(di)
                  })
         })},[])  })}
        
        
        
        )
    

     const click=()=> {
        setShowabs(difference); 
        setShowpre(result);
    console.log(Dates)}

     return (
        
        <div><br/>
             <h1 style={{color:"#073590",fontFamily:"Comic Sans MS"}}>GET  ATTENDANCE BY UPLOADING  FILE</h1>
            <br/>
            <form class="form-inline justify-content-center">
            <select class="form-control form-control-sm wl-3  w-50" id="class">
              <option value=" ">SELECT CLASS</option>
              <option value="cse2a">2 CSE-A</option></select>
            </form><br/>
            <h5>UPLOAD FILE 👉🏻👉🏻👉🏻 <input id="input" type="file"/></h5><br/>
            
            <MDBBtn onClick={click} color="primary"><strong>CLICK FOR ATTENDANCE</strong></MDBBtn><br/><br/>
            <form class="form-inline justify-content-center">
            <div class="card border-primary mb-3" style={{width:"35%",padding:"1%",fontSize:"17px",color:"#0000ff",fontFamily:"Comic Sans MS",textAlign:"left"}}>
            ► Upload the downloaded sheet by converting it to excel AND make sure sheet name is DATE
            <br/>
        </div>
            </form>
                <br/><br/>
          {showpre.map((item,i)=>(
                    <div class="card">
                    <table><br/>
                        <th>
                       <h4 style={{color:"blue",fontFamily:"Comic Sans MS"}}> Present</h4>
                       <table className="table table-striped">
                    {item.map(it=>(
              <tr><strong>{it}</strong></tr>
                       ))} </table>
                       </th>
                      <th><h4 style={{fontFamily:"Comic Sans MS"}}>DATE : {Dates[i]}</h4></th>
                       <th>
                       <h4 style={{color:"red",fontFamily:"Comic Sans MS"}}>Absent</h4>
                       <table className="table table-striped">
                    {showabs[i].map(it=>(
              <tr><strong>{it}</strong></tr>
                       ))} </table>
                       </th>
                   <br/>
                   </table>
                   </div>
                 ))}
               </div>
     )
}
export default Check
