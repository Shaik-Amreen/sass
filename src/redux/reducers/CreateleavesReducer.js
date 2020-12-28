import { CREATELEAVE } from '../actions/LeaveActionTypes';

export const CreateleaveReducer=(state={},action)=>{
    console.log(action.payload)
    console.log("CREATELEAVEddddddddddddddddd")
    switch(action.type){
        case CREATELEAVE:
            return action.payload
        default:
            return state

    }

}