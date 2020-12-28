import {USERS} from '../actions/CasActionTypes' 

export const UsersReducer=(state={},action)=>{
    console.log(action.payload)
    switch(action.type){
        
        case USERS:
            return action.payload
        default:
            return state

    }

}