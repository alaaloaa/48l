import Vue          from 'vue'
import VueRouter    from 'vue-router';
import Home         from './components/views/home'
import ViewNotFound from './components/views/notfound'
import Search       from './components/views/search/search'
         // Job Components
import JobView      from './components/views/jobs/view'
import JobCreate    from './components/views/jobs/create'
         // Profile Components
import ProfileView  from './components/views/profile/view'
import ProfileEdit  from './components/views/profile/edit'
import ViewJobs     from './components/views/profile/jobs'
import Applyments   from './components/views/profile/applyments'
         // Sign In And UP Components
import Login        from './components/views/sign/login'
import Logout       from './components/views/sign/logout'
        // Messages Components
import Messages     from './components/views/messages/view'

/* use */
Vue.use(VueRouter)

const router = new VueRouter({
  pageRouting: true,
  mode: 'history',
  routes: [
       /* General Routes */
    {
      path: '/',
      component: Home,
    }, 
    {
      path: '/home',
      name: 'home',
      component: Home,
      meta: {forAuth: true}
    }, 
    {
      path: '/search/:name?/:q?',
      name: 'search',
      component: Search,
    }, 
    {
      path: '*',
      name: 'not-found',
      component: ViewNotFound
    },
         /* Jobs Routes */
    {
      path: '/job/view/:id',
      name: 'job/view',
      component: JobView,
    }, 
    {
      path: '/job/create',
      name: 'job/create',
      component: JobCreate,
    }, 
        /* Profile Routes */ 
    {
      path: '/profile/view/jobs',
      name: 'profile/view/jobs',
      component: ViewJobs,
    }, 
    {
      path: '/profile/view/applyments/:id',
      name: 'profile/view/applyments',
      component: Applyments,
    },
    {
      path: '/profile/view/:id?',
      name: 'profile/view',
      component: ProfileView,
    },
    {
      path: '/profile/edit/:id?',
      name: 'profile/edit',
      component: ProfileEdit,
    },
          /* Login And Log Out Routes */
    {
      path: '/login',
      name: 'login',
      component: Login,
      meta: {forVisitors: true}
    }, 
    {
      path: '/logout',
      name: 'logout',
	    component: Logout,
      meta: {forAuth: true}
    }, 
        /* Messages Routes */
    {
      path: '/Messages/view/:id',
      name: 'Messages/view',
      component: Messages,
      meta: {forAuth: true}
    }, 

  ],

  // scrollBehavior (to, from, savedPosition) {
  // return { x: '50px', y: '50px' }
  // }

})

export default router



// {
// 	path: '/users/:id',
// 	name: 'profile',
// 	component: ViewProfile
// 	}, {
// 	path: '*',
// 	name: 'not-found',
// 	component: ViewNotFound
// 	}