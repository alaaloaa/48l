<template>
  <div>
    <div class="container m-t-65 recrutier">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3 col-sm-push-8 col-md-push-9">
                    <div class="sub sub-l sub-xs-t">
                        <h5 class="posted">job posted by : <router-link  :to='{path: "/profile/view/"+job.user.id}'>{{job.user.fullName}}</router-link></h5>
                        <div class="row">
                            <div class="col-xs-3 col-sm-6 col-md-5">
                                <img :src="job.user.avatar" alt="recruiter profile" class="img-responsive">
                            </div>
                            <div class="col-xs-9 col-sm-6 col-md-7 p-l-no">
                                <p><a href="#"><b>{{job.user.job}}</b></a></p>
                                <p>{{job.user.about}}</p>
                                <p><a href="#">UI Developer ..</a></p>
                                <p><span class="fa fa-map-marker" style="width:15px"></span>{{job.user.country}}</p>
                            </div>
                            <div class="col-xs-12 m-t-20">
                                 <span> 
                                    <span class="btn btn-default" v-if='follow === null' @click='makeFollow'>Follow</span>
                                    <span class="btn btn-success" v-else @click='makeFollow'>UnFollow</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-9 col-sm-pull-4 col-md-pull-3">
                    <div class="sub sub-f sub-xs-t job-description">
                        <div class="alert alert-info" v-if='job.availability == 0'>
                            <b>This Job is no longer available.</b>
                        </div>

                        <h3 class="job-name">
                            <span><b>{{job.name}}</b></span>
                            <span class="pull-right date" >Posted on {{job.created_at}}</span>
                        </h3>

                        <h6>
                            <a href="#">Talent Asset Software and Consulting.</a>
                        </h6>

                       <!--  <button class="btn btn-primary">Login To Apply</button>
                        <button class="btn btn-primary">Signup To Apply</button> -->
                        <span>  
                            <span class="btn btn-primary" v-if='apply === null && userData.id === job.user.id'>Wait For Requests</span>
                            <span class="btn btn-success" v-else-if='apply === null' @click='makeApply'>Apply Now</span>
                            <span v-else class="btn btn-success disabled">You Applied Successfully!</span>
                        </span> 

                        <div class="pull-right"> 
                            <span :class="{'btn btn-warning': bookmark == null}" v-if='bookmark == null' @click='makeBookmark'>Bookmark</span>
                            <span  :class="{'btn btn-primary': bookmark != null}" v-else @click='makeBookmark'>UnBookmark</span>
                        </div>
                       
                        <hr>
                        <div class="details row">
                            <div class="col-xs-6">
                                <p>
                                    <span class="fa fa-calendar"></span>
                                    {{job.experience}} years
                                </p>
                                <p>
                                    <span class="fa fa-map-marker"></span>
                                    {{job.address}}
                                </p>
                            </div>
                            <div class="col-xs-6">
                                <p><span class="fa fa-money"></span>{{job.salary}}$</p>
                                <p>
                                    <span class="fa fa-graduation-cap"></span>
                                    {{job.education}}
                                </p>
                            </div>
                        </div>
                        <hr>
                        <h5 class="title">Job Desciption :</h5>
                        <p class="description">
                            {{job.description}}
                        </p>
                        <hr>
                        <h5 class="title">Skills :</h5>
                        <div class="keywords">
                            <a style=" margin-right: 10px;color: #333;border-radius: 5px;" href="#" @click.prevent v-for='skill in job.skills'>{{skill.name}}</a>
                        </div>
                    </div>
                    <div class="sub sub-f sub-xs-t job-description">
                        <h5 class="title">similar jobs</h5>
                         <div class="keywords">
                            <span  v-for='similar in similars'>
                                <router-link  :to='{path: "/job/view/"+similar.id}'>{{similar.name}}</router-link>
                            </span>    
                        </div>
                    </div>
                </div>
            </div>
        </div>
  </div>
</template>

<script>
    import { mapGetters } from 'vuex'

    export default {
        data() {
            return {
               job         : [],
               similars    : [],
               apply       : [],
               bookmark    : [],
               follow      : [],
               timer : '',
            }
        },

        computed: {
            id() {
                return this.$route.params.id
            },

            ...mapGetters([
                'userData'
            ]),           
        },

        methods: {
            getData() {
                axios.get('/api/job/view/'+this.id).then(res => {
                    this.job      = res.data.job
                    this.similars = res.data.similars
                    this.apply    = res.data.apply
                    this.bookmark = res.data.bookmark
                    this.follow   = res.data.follow
                })

            },

            makeApply() {
               axios.get('/api/job/apply/'+this.id)
               this.apply = [0]
            },
            makeBookmark() {
               var url = '/api/job/bookmark/'+this.id
               if (this.bookmark !== null) {
                  url += '/'+this.bookmark.id
               } 
               axios.get(url)
               this.getData()
               this.bookmark = [0]
            },
            makeFollow() {
               var url = '/api/user/follow/'+this.job.user.id
               if (this.follow !== null) {
                 url += '/'+this.follow.id
               } 
               axios.get(url)
               this.getData()
               this.follow = [0]
            },
        },

        created() {
           this.getData()
           // this.timer = setInterval(this.getData, 300)
        },

        watch: {
            $route() {
                this.getData()
            },
        }
    }
</script>

<style>
    

</style>



