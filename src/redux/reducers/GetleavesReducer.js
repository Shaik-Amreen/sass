import {GETLEAVE} from '../actions/LeaveActionTypes' 

export const GetleaveReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case GETLEAVE:
            return action.payload
        default:
            return state

    }

}