import { ADD } from '../actions/CasActionTypes';

export const AddempReducer=(state={},action)=>{
    console.log(action.payload)
    console.log("addddddddddddddddddd")
    switch(action.type){
        case ADD:
            return action.payload
        default:
            return state

    }

}