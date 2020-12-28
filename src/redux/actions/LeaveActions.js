import {LEAVE, LEAVEINFO,APPLYLEAVE,GETLEAVE,CREATELEAVE} from './LeaveActionTypes'
import axios from 'axios'





export const applyingleave=(apply)=>{
    return dispatch=>{
       const user={
           empid:apply.empid,
           empname:apply.empname,
           empdesn:apply.empdesn,
           leavetype:apply.leavetype,
           from:apply.from,
           to:apply.to,
           days:apply.days,
           reason:apply.reason,
           applied:apply.applied,
           appliedon:apply.appliedon,
           done:apply.done
           
       }
       return  axios.post('http://localhost:4000/applyleave',user)
       .then(result=>{
           dispatch({
               type:APPLYLEAVE,
               payload:result.data
           })
       })
  }
}



















export const leave=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/leave')
        .then(result=>{
            dispatch({
                type:LEAVE,
                payload:result.data,
              
            })
           
        })
    }
}

export const getempleave=(empname)=>{
           console.log(empname)
    return dispatch=>{
        return axios.post('http://localhost:4000/getempleave/'+empname)
        .then(result=>{
            dispatch({
                type:LEAVEINFO,
                payload:result.data,
              
            })
           
        })
    }
}





export const reason=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/reason')
        .then(result=>{
            dispatch({
                type:LEAVE,
                payload:result.data,
              
            })
           
        })
    }
}
export const findempleaves=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/findempleaves')
        .then(result=>{
            dispatch({
                type:GETLEAVE,
                payload:result.data,
              
            })
           
        })
    }
}
export const reasonfacleave=(
    fac={empid:'' ,empname:'' ,
empdept:'',empdes:'',type:'',from:''  ,to:'',days:'',reason:''})=>{
    return dispatch=>{
       let postreason={
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
       console.log(postreason)
       return  axios.post('http://localhost:4000/postreason',postreason)
       .then(result=>{
           
           dispatch({
               type:LEAVE,
               payload:result.data
           })
       })
       
       
  }
}

export const Leavech=(
    emp={empid:"" ,empcls:"" ,empels:"",empvac:""}
)=>{
           
    return dispatch=>{
        let leave={
            empid:emp.empid,
            empcls:emp.empcls,
         empels:emp.empels,
        empvac:emp.empvac
    }
            console.log(leave);
        return axios.post('http://localhost:4000/leachan/:empid',leave)
        .then(result=>{
            dispatch({
                type:LEAVE,
                payload:result.data,
             
            })
            
        })
    }
}
export const Createleave=(
    emp={empid:"" ,empcls:"" ,empels:"",empvac:"",empml:"",emplop:""}
)=>{
           
    return dispatch=>{
        let leave={
            empid:emp.empid,
            empcls:emp.empcls,
         empels:emp.empels,
        empvac:emp.empvac,
        empml:emp.empml,
        emplop:emp.emplop
    }
            console.log(leave);
        return axios.post('http://localhost:4000/createleave',leave)
        .then(result=>{
            dispatch({
                type:CREATELEAVE,
                payload:result.data,
             
            })
            
        })
    }
}


export const leaveupdate=(
    emp={empid:"" ,applied:"",   empid:"",days:"",
 empdesn:"",
 empname:"",
    from:"",
leavetype:"",
  reason:"",
      to:"",
 applied:"",appliedon:"",done:""}
)=>{
           
    return dispatch=>{
        let leave={
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
    }
            console.log(leave);
        return axios.post('http://localhost:4000/leaveupdate/:empid',leave)
        .then(result=>{
            dispatch({
                type:LEAVE,
                payload:result.data,
             
            })
            
        })
    }
}













