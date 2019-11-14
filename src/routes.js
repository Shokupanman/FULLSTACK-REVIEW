import React from 'react'
import { Switch, Route } from 'react-router-dom'
import Login from './Components/Login'
import Register from './Components/Register'
import Dash from './Components/Dash'


export default (
    <Switch>
        <Route exact path='/' component={Login} />
        <Route path='/register' component={Register} />
        <Route path='/dashboard' component={Dash} />
    </Switch>

)