import {SALAR} from '../actions/SalaryActionTypes' 

export const SalarReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case SALAR:
            return action.payload
        default:
            return state

    }

}