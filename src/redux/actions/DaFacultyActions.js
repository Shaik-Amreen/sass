import {DAFAC} from './DaFacActionTypes'
import axios from 'axios'

export const DaFaculty=(dadata={ date:"",da:""})=>{
    return dispatch=>{
       const data={
           date:dadata.date,
           da:dadata.da,
        
       }
       return  axios.post('http://localhost:4000/dacreate',data)
       .then(result=>{
           dispatch({
               type:DAFAC,
               payload:result.data
           })
       })
  }
}
export const dafac=()=>{
           
    return dispatch=>{
        return axios.get('http://localhost:4000/da')
        .then(result=>{
            dispatch({
                type:DAFAC,
                payload:result.data,
              
            })
           
        })
    }
}
