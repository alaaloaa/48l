<template>
  <div>
    <div class="container">
       <div class="row">
                              <!-- Left Section  -->
           <div class='col-md-3 col-sm-4 col-xs-12 profile-view'>
               <div class="pic">
                 <div class='img'>
                   <div :style="{ backgroundImage: 'url(' + user.avatar + ')' }"></div>
                 </div>
                 <h2><a href="#" @click.prevent>{{user.first_name}} {{user.last_name}}</a></h2>
             </div>
           </div>
                                 <!-- Right Section  -->
            <div class="col-md-8 col-md-offset-1 col-sm-7 col-sm-offset-1 col-xs-12 profile-view right-section">
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        Name
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                     {{user.first_name}} {{user.last_name}}
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        Email
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                       {{user.email}}
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                      Phone
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                      {{user.phone}}
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        Country
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                        {{user.country}}           
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        Job
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                       {{user.job}}
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        About
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                     {{user.about}}
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        Gender
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                     {{user.gender}}
                   </div>
                </div>
                <div class='txt '>
                   <div class="col-sm-3 col-xs-4 head" >
                        Register Date
                   </div>
                   <div class="col-sm-9 col-xs-8 prag">
                     {{user.created_at}}
                   </div>
                </div>
                <br><br><br>
                <div v-if='isProfile'>
                  <router-link class="btn btn-primary" :to='{path: "/profile/edit"}'>Edit Profile</router-link> 
                  <router-link class="btn btn-danger" :to='{path: "/profile/view/jobs"}'>My Jobs</router-link>
                </div>
                <div v-else>
                  <router-link class="btn btn-info" :to='{path: "/messages/view/"+id}'>Send Message</router-link>                                    
                </div>
            </div> 
          </div> 
        </div>  
 

  

  </div>
</template>

<script>
    // import io from 'socket.io-client';
    import { mapState } from 'vuex'

    export default {
        data() {
            return {
               user: [],
              
            }
        },

        computed: {
           id() {
              return this.$route.params.id
           },
           isProfile() {
             if (this.user.id === this.userData.id) {
               return true               
             }
           },
            ...mapState([
                'check',
                'userData'
            ]),
        },

        methods: {
           getData(){
               axios.get('/api/profile/view/'+this.id).then(res => { 
                 this.user = res.data
               })  
                // console.log(this.user)
           },
    
        },

        created() {
            this.getData();
            // this.userData
            // var socket = io('http://localhost:3000');
            //   socket.on('connect', function () {
            //     socket.emit('hi');

            //     socket.on('message', function (msg) {
            //       console.log(msg)
            //     });
            //   });
        },

        watch: {
          $route() {this.getData()}
        }
    }
</script>

<style>
body{
  background: #eee
}
  .profile-view{margin-top: 70px}
  .name{
    text-align: center !important;
    font-size: 30px;
    text-transform: capitalize;
    font-weight: bold; 
  }

  .txt{margin-top: 0 !important} 
  .prag, .head {
    height: 35px
  }

  .right-section{padding:10px 30px}

  @media screen and (max-width: 756px) {
    .right-section{margin-top: 20px}
  }
</style>
