import {DAFAC} from '../actions/DaFacActionTypes'
export const DaReducer=(state={},action)=>{
   console.log(action.payload)
      switch(action.type)
      {
       case DAFAC:
           return action.payload
     default:
          return state
      }

}

