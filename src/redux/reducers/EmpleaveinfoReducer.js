import {LEAVEINFO} from '../actions/LeaveActionTypes' 

export const leaveInfoReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case LEAVEINFO:
            return action.payload
        default:
            return state

    }

}