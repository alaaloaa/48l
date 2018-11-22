<template>
    <div>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div v-if='check'>                    
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <!-- <router-link class="navbar-brand" :to='{path:"/home"}'><b>ITOValley</b></router-link> -->
                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar">

                        <ul class="nav navbar-nav">
                            <li><router-link :to='{path:"/home"}'>Home</router-link></li>
                            <li><a href="#" @click.prevent='getData'>Search</a></li>
                            <li><router-link :to='{path:"/job/create"}'>Create Job</router-link></li>
                            <li>
                                <a href="#" data-toggle="popover" title="Find a Job"
                                data-content='
                                <!-- <h4 class="title">Find a Job</h4> -->
                                <ul>
                                <li><a href="#">Jobs By Location</a></li>
                                <li><a href="#">Jobs By Category</a></li>
                                <li><a href="#">Jobs By Top Employers</a></li>
                                <li><a href="#">Jobs With My Skills</a></li>
                                <li><a href="#">Local Jobs</a></li>
                                </ul>'
                                >Jobs</a>
                            </li>

                        </ul>
                       
                        <!-- <form class="navbar-form navbar-left">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                                </div>
                            </div>
                        </form> -->
                        <!-- <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a  data-toggle="popover" style="padding:10px; position:relative; top:30px" title=" profile" data-content='
                                <li><a href=""><span class="fa fa-lock"></span> Change Password</a></li>
                                <li><a href=""><span class="fa fa-user"></span> Edit Profile</a></li>
                                <li><a href="#"><span class="fa fa-gear"></span> Settings</a></li>
                                <li><router-link :to="{path:"/logout}"><span class="fa fa-power-off"></span> Logout</router-link></li>
                                </ul>'>
                                <div class='profile-pic' style="position:relative; top:-32px">
                                    <router-link :to="{path: '/profile/view/1'}">
                                       <div style="background: url(images/default-profile.jpg)"></div>
                                    </router-link>
                                </div>
                                </a>
                            </li>


                            <li><router-link :to="{path:'/logout'}"><span class="fa fa-power-off"></span> Logout</router-link></li>
                            </a>
                            </li>
                        </ul> -->
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <router-link :to="{path: '/profile/view/'+userData.id}">
                                   <span style="display: inline-block;float: left; margin-right: 5px; font-weight: bold;position: relative;top: 2px">{{userData.fullName}}</span> 
                                   <div class='profile-pic' style="position:relative; top:px; display: inline-block;">
                                     <div :style="{ backgroundImage: 'url(' + userData.avatar + ')' }"></div>
                                   </div>
                                </router-link>
                            </li>
                            <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-caret-down pull-right" style="position: relative;top: -8px; font-size: 20px; left: -2px"></span></a>
                              <ul class="dropdown-menu">
                                <li><router-link :to="{path:'/profile/edit/'+userData.id}">Edit Profile<span class="glyphicon glyphicon-cog pull-right"></span></router-link></li>
                                <li class="divider"></li>
                                <li><a href="#">User stats <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                                <li class="divider"></li>
                                <li><a href="#">Messages <span class="badge pull-right"> 42 </span></a></li>
                                <li class="divider"></li>
                                <li><a href="#">Favourites Snippets <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                                <li class="divider"></li>
                                <li><router-link :to="{path:'/logout'}"><span class="fa fa-power-off"></span> Log Out <span class="glyphicon glyphicon-log-out pull-right"></span></router-link></li>
                              </ul>
                            </li>
                        </ul>
                    </div>   
                </div>   
                <div v-else> 
                    <ul class="nav navbar-nav navbar-right">
                        <li><router-link :to='{path:"/login"}'>Login</router-link></li>
                    </ul>
                </div>
            </div>
        </nav>      
    </div>
</template>

<script>

    import { mapGetters } from 'vuex'
    import { mapActions } from 'vuex'
    import { mapState } from 'vuex'

    export default {

        data() {
            return {
               user: [],
            }
        },
        computed: {
            ...mapGetters([
                'check',
                'userData'
            ]),

            // ...mapState([
            //     'userData'
            // ])
        },
        
        methods: {

            getData() {
                this.$router.push('/search')
                axios.get('/api/job/search').then(res => this.jobs = res.data[0])
            console.log(this.$store.state.userData)
            },

            ...mapActions([
                'userDataAction',
                'checkAction',
            ])


         },

         mounted() {
            this.checkAction()
            this.userDataAction()
         },
         watch: {
            $route() {
              this.userDataAction()                
            }
         }
        
    }
</script>


<style>
  
.nav>li>a:hover, .nav>li>a:focus, .nav .open>a, .nav .open>a:hover, .nav .open>a:focus {
    background:#fff;
}
.dropdown {
    background:#fff;
    border:1px solid #ccc;
    border-radius:4px;
    position: relative;
    margin-top: 8.5px !important
}
.dropdown-menu>li>a {
    color:#428bca;
}
.dropdown ul.dropdown-menu {
    border-radius:4px;
    box-shadow:none;
    margin-top:20px;
    width:300px;
}
.dropdown ul.dropdown-menu:before {
    content: "";
    border-bottom: 10px solid #fff;
    border-right: 10px solid transparent;
    border-left: 10px solid transparent;
    position: absolute;
    top: -10px;
    right: 16px;
    z-index: 10;
}
.dropdown ul.dropdown-menu:after {
    content: "";
    border-bottom: 12px solid #ccc;
    border-right: 12px solid transparent;
    border-left: 12px solid transparent;
    position: absolute;
    top: -12px;
    right: 14px;
    z-index: 9;
}
</style>