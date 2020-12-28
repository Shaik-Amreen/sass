import {combineReducers} from 'redux'
import {UserReducer} from '../reducers/UserReducer'
import {LoginReducer} from '../reducers/UserLoginReducer'
import { FacInfoReducer } from './FacInfoReducer'
import {UsersReducer} from './UsersReducer'
import {LeavesReducer} from './LeavesReducer'
import {SalaryReducer} from './SalaryReducer'
import {DaReducer} from './DaFacultyReducer'
import {SalarReducer} from './SalarReducer'
import { leaveInfoReducer } from './EmpleaveinfoReducer'
import { ApplyleaveReducer } from './ApplyleaveReducer';
import { GetleaveReducer} from './GetleavesReducer';
import { EmpInfoReducer } from './EmpInfoReducer';
import { AddempReducer } from './AddempReducer';
import {CreateleaveReducer} from './CreateleavesReducer'
import { CreateofficeReducer } from './CreateOfficeReducer';
const Rootreducer=combineReducers({
    User:UserReducer,
    Login:LoginReducer,
    Facinfo:FacInfoReducer,
    Users:UsersReducer,
    Leave:LeavesReducer,
    Salary:SalaryReducer,
    Da:DaReducer,
    Salar:SalarReducer,
    leaveinfo:leaveInfoReducer,
    applyleave:ApplyleaveReducer,
    getempleaves:GetleaveReducer,
    empinfo:EmpInfoReducer,
    addemp:AddempReducer,
    createleave:CreateleaveReducer,
    createoffice:CreateofficeReducer
})

export default Rootreducer