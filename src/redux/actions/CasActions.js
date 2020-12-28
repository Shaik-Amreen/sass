import {LOGIN,REG,FACDISP,USERS} from './CasActionTypes'
import axios from 'axios'
//  axios=axios.create({
//     baseURL:'http://localhost:4000/'
// })
//create user
export const RegUser=(userData={ un:"", pwd:"",utype:""})=>{
    return dispatch=>{
       const user={
           un:userData.un,
           pwd:userData.pwd,
           utype:userData.utype
       }
       return  axios.post('http://localhost:4000/create',user)
       .then(result=>{
           dispatch({
               type:REG,
               payload:result.data
           })
       })
  }
}
//LOgin user

export const UserLog=(userData)=>{
    return dispatch=>{
       const user={
           un:userData.un,
           pwd:userData.pwd
       }
       return  axios.post('http://localhost:4000/login',user)
       .then(result=>{
           dispatch({
               type:LOGIN,
               payload:result.data
           })
       })
  }
}
//Faculty display on dashboard
export const facdisp=(empname)=>{
           console.log(empname)
     return dispatch=>{
         return axios.post('http://localhost:4000/empname/'+empname)
         .then(result=>{
             dispatch({
                 type:FACDISP,
                 payload:result.data,
               
             })
            
         })
     }
}

export const users=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/emps')
        .then(result=>{
            dispatch({
                type:USERS,
                payload:result.data,
              
            })
           
        })
    }
}

