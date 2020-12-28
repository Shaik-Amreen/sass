import {APPLYLEAVE} from '../actions/LeaveActionTypes' 

export const ApplyleaveReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case APPLYLEAVE:
            return action.payload
        default:
            return state

    }

}