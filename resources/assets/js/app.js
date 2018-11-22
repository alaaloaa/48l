/* Require Files For Bootstrap */
require('./bootstrap');
import pagination from 'vue-bootstrap-pagination'

/* Vuetify */
import Vue from 'vue'
import Vuetify from 'vuetify'
Vue.use(Vuetify)
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'
/* vuex */
import {store} from './store/store.js'

/* routes */
import Router from './routes.js'
/* validate */
import VeeValidate from 'vee-validate';
Vue.use(VeeValidate);

/* Mulitiple Select */
import Multiselect from 'vue-multiselect'

/* Require Components */
Vue.component('app-layout-header', require('./components/layouts/header.vue'));
Vue.component('app-loader', require('./components/views/loading.vue'));
Vue.component('app-alert', require('./components/views/alert.vue'));

/* passport component */
Vue.component('passport-clients', require('./components/passport/Clients.vue'));
Vue.component('passport-authorized-clients',require('./components/passport/AuthorizedClients.vue'));
Vue.component('passport-personal-access-tokens',require('./components/passport/PersonalAccessTokens.vue'));

/* Auth Package */
import Auth from './packages/auth/auth.js';
Vue.use(Auth);

Router.beforeEach(
	  (to, from, next) => {
         if (to.matched.some(record => record.meta.forVisitors)) {
         	if (Vue.auth.isAuthianticated()) {
         		next({
         			path: '/home'
         		})
         	} else next()
         	
         } else if (to.matched.some(record => record.meta.forAuth)) {
         	if (!Vue.auth.isAuthianticated()) {
         		next({
         			path: '/login'
         		})
         	} else next()

         } else next()
	  }
	)

const app = new Vue({
    el: '#app',
    router: Router,
    store: store,
    components: {
       pagination,
       Multiselect: 'multiselect',
    },
    
    data() {
        return {
           
        }
    },

    created() {
                /* Functions that tell the server that user authianticated */
        axios.defaults.headers.common['Accept'] = 'application/json';
        axios.defaults.headers.common['Authorization'] = 'Bearer '+ this.$auth.getToken()
              
    }
});
