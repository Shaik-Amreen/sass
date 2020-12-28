import axios from 'axios'
import {EMPCRE, ADD} from './CasActionTypes'

export const changeemp=(
    emp={empid:''/* ,empname:'' ,
empsname:''  ,empgen:'',empdes:'',empdept:'' ,empqua:'',empphno:'',empemail:''*/,status:''})=>{
    return dispatch=>{
       let sal={
        empid:emp.empid,
        /*empname:emp.empname,
        empsname:emp.empsname,
        empgen:emp.empgen,
        empdes:emp.empdes,
        empdept:emp.empdept,
        empqua:emp.empqua,
        empphno:emp.empphno,
         empemail:emp.empemail,*/

         status:emp.status
       }
       console.log(sal)
       return  axios.post('http://localhost:4000/emp',sal)
       .then(result=>{
           
           dispatch({
               type:EMPCRE,
               payload:result.data
           })
       })
       
       
  }
}
export const addemp=(
    emp={empid:'' ,empname:'' ,
empsname:''  ,empgen:'',empdes:'',empdept:'' ,empqua:'',empphno:'',empemail:'',status:''})=>{
    return dispatch=>{
       let add={
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
       console.log(add)
       return  axios.post('http://localhost:4000/createmp',add)
       .then(result=>{
           
           dispatch({
               type:ADD,
               payload:result.data
           })
       })
       
       
  }
}