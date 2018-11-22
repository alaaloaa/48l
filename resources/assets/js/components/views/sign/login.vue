<template>
    <div>
        <div class="container" style="margin-top: 100px">
		    <div class="row">
		        <form class="col-md-offset-3 col-md-6" @submit.prevent='login'>
		            <div class="form-login">
    		            <h4>Login Here</h4>
    		            <input class="form-control" v-model='email'  v-validate="'required'" type="email" :class="{'danger': errors.has('email') }"  placeholder="Enter Your Email" name="email" autofocus />
                        <span class="danger">{{ errors.first('email') }}</span>
    		            </br>
    		            <input v-validate="'required'" type="password" :class="{'danger': errors.has('password') }" name="password" class="form-control" v-model='password' placeholder="password" />
                        <span class="danger">{{ errors.first('password') }}</span>
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

        methods: {
            login() {
                let data = {
                    client_id: 2,
                    client_secret: 'qRxikaf4UvbsbWEF4aKEqOmufxycnhSPd8QkUEBt',
                    grant_type: 'password',
                    username: this.email,
                    password: this.password,
                }

                axios.post('/oauth/token', data)
                    .then(response => {
                        this.$auth.setToken(response.data.access_token, response.data.expires_in + Date.now())
                        this.$store.dispatch('checkAction')
                        this.$store.dispatch('userDataAction')
                        this.$router.push('/home')
                    })
                
        },
   
    }

}
</script>

<style>
    


.form-login {
    background-color: #fff !important;
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
    box-shadow:0 1px 0 #cfcfcf;
}

h4 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

input{
	border-radius: 10px !important
}

.wrapper {
    text-align: center;
}

</style>