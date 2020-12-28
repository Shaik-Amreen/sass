import React,{useState} from 'react'
import {connect} from 'react-redux'
import {UserLog} from '../redux/actions/CasActions'
import {Link,Redirect,withRouter} from 'react-router-dom'
import Footer from './Footer'
import logo from '../unnamed.png'
function UserLogin(props) {
   
     const [un,setUn]=useState("")
    const [pwd,setPwd]=useState("")
    const[valid,setvalid]=useState("")
    
    const handleSubmit=(e)=>{
     e.preventDefault()
     const user={
         un:un,
         pwd:pwd
     }
     
     props.LoginUser(user)
     
     setPwd("")
     setUn("")
    
      
}
   
    return (
        <div style={{paddingTop:"15%"}}>
        
        <div className="card"  >
        <div className="row  ">
        <div className="col"  style={{paddingTop:"3%"}}>
        
        <img src={logo}  alt="CAS" width="300px" height="300px"></img>
        </div>
        <div className="col">
        
            <form onSubmit={(e)=>handleSubmit(e)}>
            <h3 style={{textAlign:"left",color:"grey",paddingTop:"3%"}}>Sign in</h3>
            <div className=" container form-group" >
   
    <br/>

    <input  className="form-control"  type="text" value={un} onChange={(e)=>{setUn(e.target.value)}} placeholder="User Name"></input><br/>
    <input className="form-control "  type="password" value={pwd} onChange={(e)=>{setPwd(e.target.value)}} placeholder="Password"></input><br/>
                <button className="btn btn-primary " style={{fontWeight:700,width:"30%"}} type="submit">LOGIN</button>
                <br/><br/>
                
                {<Link to="/"><span style={{color:"crimson"}}>Forgot Username or Password ?  </span></Link>}       
                 {<Link style={{color:"grey"}} to='/reg'> |  Not registered yet? <span style={{color:"#049fd9"}}>Sign Up !</span></Link>}         
                </div><Footer/>
            </form>
            
          
       
       {console.log(props.LUser) }
    {props.LUser.utype==="p"?<Redirect to={
        {          
            pathname: "/Principal",
            state: { ltype:"p" ,
            user:props.LUser }
          
        }
    }></Redirect>:
    props.LUser.utype==='hod'?<Redirect to={
        {          
            pathname: "/Hod",
            state: { ltype:"hod",
            user:props.LUser   }
          
        }
    }></Redirect>:
    props.LUser.utype==='f'?<Redirect to={
        {          
            pathname: "/Faculty",
            state: { ltype:"f",
            user:props.LUser   }
          
        }
    }></Redirect>:
    props.LUser.utype==='ex'?<Redirect to={
        {          
            pathname: "/Esection",
            state: { ltype:"ex",
            user:props.LUser   }
          
        }
    }></Redirect>:
    props.LUser.utype==='as'?<Redirect to={
        {          
            pathname: "/Asection",
            state: { ltype:"as" ,
            user:props.LUser  }
          
        }
    }></Redirect>:
    props.LUser.utype==='ao'?<Redirect to={
        {          
            pathname: "/Ao",
            state: { ltype:"ao" ,
            user:props.LUser  }
          
        }
    }></Redirect>:
    props.LUser.utype==='o'?<Redirect to={
        {          
            pathname: "/Office",
            state: { ltype:"o",
            user:props.LUser   }
          
        }
    }></Redirect>:
    props.LUser.utype==='stu'?<Redirect to={
        {          
            pathname: "/Student",
            state: { ltype:"stu",
            user:props.LUser   }
          
        }
    }></Redirect>:
    <div className="alert-danger"  role="alert"> Not Loggged </div>}
        <div style={{paddingBottom:"3%"}}>  </div>
        </div> 
          
          </div>
        </div>
        
        </div>
    )
}
const mapStateToProps=(state)=>{
    return {
       LUser:state.Login
       }
  
}
const mapActionToProps={
    LoginUser:UserLog
      }
export default connect(mapStateToProps,mapActionToProps)(withRouter(UserLogin)) 