import {EMPCRE} from '../actions/CasActionTypes' 

export const EmpInfoReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case EMPCRE:
            return action.payload
        default:
            return state

    }

}