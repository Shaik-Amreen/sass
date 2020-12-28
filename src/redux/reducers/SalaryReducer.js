import {SALARY} from '../actions/SalaryActionTypes' 

export const SalaryReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case SALARY:
            return action.payload
        default:
            return state

    }

}