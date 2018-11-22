import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export const store = new Vuex.Store({
	state: {
      isLoggedIn: false,
      userData: [],
      error_alert: false,
      success_alert: false,
    },

	getters: {
		check(state) {
            return state.isLoggedIn
        },

        userData(state) {
            return state.userData
        },
	},

	mutations: {
		check(state) {
            var token = localStorage.getItem('token')
            if (token) {
                state.isLoggedIn = true
            } else {
            	state.isLoggedIn = false
            } 
        },

        userData(state) {
                var token = localStorage.getItem('token')
                if (token) {
                    axios.defaults.headers.common['Accept'] = 'application/json';
                    axios.defaults.headers.common['Authorization'] = 'Bearer '+ Vue.auth.getToken()
                    axios.get('/api/userData').then(res => state.userData = res.data)
                } else {
                    'You Are Not Authianticated'
                }        
        }     
	},

	actions: {
		checkAction(context) {
	        context.commit('check')				
		},

		userDataAction(context) {
			context.commit('userData')
		}
	}


	
})