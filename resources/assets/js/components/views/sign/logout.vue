<template>
    <div>
        <div class="container" style="margin-top: 100px">
		    <div class="row">
		        <form class="col-md-offset-3 col-md-6" @submit.prevent='login'>
		            <div class="form-login">
    		            <h4>Login Here</h4>
    		            <input type="text" class="form-control" v-model='email' placeholder="Enter Your Email" />
    		            </br>
    		            <input type="password" class="form-control" v-model='password' placeholder="password" />
    		            </br>
    		            <div class="wrapper">
    		            <button class="btn btn-primary btn-md">login<i class="fa fa-sign-in"></i></button>
    		            </div>
		            </div>
		        </form>
		    </div>
		</div>
  </div>
</template>

<script>
    export default {
        data () {
            return {
                 email: '',
                 password: '',
            }
        },

        computed: {
         
        },

        methods: {
            logout() {
                Vue.auth.destroyToken()
                this.$store.dispatch('checkAction')
                this.$store.state.checkAction = []                
                this.$store.state.userData = []               
                this.$router.push('/login')
            }
        },

        created() {
           this.logout()
        },

   
    }


</script>

