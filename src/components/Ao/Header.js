import React from 'react'
import './styles.css'
import {Link} from 'react-router-dom'

function Header(props) {
    return (<>
      
      <div className="header"> 
    <strong>AO DASHBOARD</strong>
  
    <Link to='/'style={{textDecoration:'over-hidden',color:'white',float:'right',paddingLeft:'10px'}}>{"   "}<strong>LOGOUT</strong></Link>
   <strong style={{float:'right'}}>{props.name}</strong> 
  </div>
     </>   

    )
}

export default Header
