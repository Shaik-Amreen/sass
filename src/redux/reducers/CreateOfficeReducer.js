import {OFFICE} from '../actions/SalaryActionTypes' 

export const CreateofficeReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case OFFICE:
            return action.payload
        default:
            return state

    }

}