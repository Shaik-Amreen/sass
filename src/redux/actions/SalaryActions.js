import {SALARY,SALAR, OFFICE} from './SalaryActionTypes'
import axios from 'axios'



export const salary=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/salary')
        .then(result=>{
            dispatch({
                type:SALARY,
                payload:result.data,
              
            })
           
        })
    }
}

export const getsalary=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/clgsalary')
        .then(result=>{
            dispatch({
                type:SALAR,
                payload:result.data,
              
            })
           
        })
    }
}
export const Createsal=(
    emp={empid:'' ,empname:'' ,
empda:''  ,empdept:'',empaccno:'',empbasic:'' ,emphra:'',empsalary:'',empdate:''})=>{
    return dispatch=>{
       let sal={
        empid:emp.empid,
        empname:emp.empname,
        empda:emp.empda,
        empdept:emp.empdept,
        empaccno:emp.empaccno,
        empbasic:emp.empbasic,
        emphra:emp.emphra,
        empsalary:emp.empsalary,
         empdate:emp.empdate,
        
       }
       console.log(sal)
       return  axios.post('http://localhost:4000/createsalary',sal)
       .then(result=>{
           
           dispatch({
               type:SALAR,
               payload:result.data
           })
       })
       
       
  }
}
export const createoffice=(
    emp={empid:'' ,emptype:'' ,
emppan:''  ,empaadhar:'',empaccno:'',empbasic:'' ,empagp:'',empspl:'',empdoj:'',empdob:'',empinc:''})=>{
    return dispatch=>{
       let sal={
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
       console.log(sal)
       return  axios.post('http://localhost:4000/createoffice',sal)
       .then(result=>{
           
           dispatch({
               type:OFFICE,
               payload:result.data
           })
       })
       
       
  }
}