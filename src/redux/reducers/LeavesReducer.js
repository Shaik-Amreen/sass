import {LEAVE} from '../actions/LeaveActionTypes' 

export const LeavesReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case LEAVE:
            return action.payload
        default:
            return state

    }

}