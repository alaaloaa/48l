<template>
  <div>
      <div>
        <div v-show='error_alert' id="error-alert" class='error-alert'>
           Fix The Errors And Try Again.
        </div>  
        <div v-show='success_alert' id="success-alert" :class='{"error-alert": successMsg == "Check Your Password Again!", "success-alert": successMsg == "User <b>Updated</b> Successfuly" }'>
            <span v-html='successMsg'></span>
        </div>        
       </div>     
       <div class="container">
        <div class="row"  style="background:#fff; margin-top: 70px">
          <div class="col-xs-8 col-xs-offset-2" >
              <div class="card">
                  <div class="card-body">
                      <div class="row">
                          <div class="col-md-12">
                              <h4 class='text-center'>My Profile</h4>
                              <hr>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col-md-12">
                              <form @submit.prevent='updateData'>
                                    <div class="form-group row">
                                        <label for="first_name">First Name</label>
                                        <input  v-validate="'required'" :class="{'danger': errors.has('first_name') }" name="first_name" v-model="data.first_name" type="text" class="form-control" id="first_name" placeholder="Enter the user first name">
                                        <span class="danger">{{ errors.first('first_name') }}</span>
                                    </div> 

                                    <div class="form-group row">
                                        <label for="last_name">Last Name</label>
                                        <input  v-validate="'required'" :class="{'danger': errors.has('last_name') }" v-model="data.last_name" type="text" class="form-control" id="last_name" name="last_name" placeholder="Enter the user last name">
                                        <span class="danger">{{ errors.first('last_name') }}</span>
                                    </div>  

                                    <div class="form-group row">
                                        <label for="email">Email</label>
                                        <input  v-validate="'required'" :class="{'danger': errors.has('email') }" v-model="data.email" type="email" class="form-control" id="email" name="email" placeholder="Enter the user email">
                                        <span class="danger">{{ errors.first('email') }}</span>
                                    </div> 

                                    <div class="form-group row">
                                        <label for="phone">Phone</label>
                                        <input  v-validate="'required'" :class="{'danger': errors.has('phone') }" v-model="data.phone" type="phone" class="form-control" id="phone" name="phone" placeholder="Enter the user phone">
                                        <span class="danger">{{ errors.first('phone') }}</span>
                                    </div> 

                                    <div class="form-group row">
                                        <label for="country">Country</label>
                                        <select  v-validate="'required'" :class="{'danger': errors.has('country') }" name="country"  class="form-control" id="country" v-model="data.country">
                                            <option v-for='country in countries' :value="country.name">{{country.name}}</option>   
                                        </select>
                                        <span class="danger">{{ errors.first('country') }}</span>
                                    </div>

                                     <div class="form-group row">
                                        <label for="job">Job</label>
                                        <input  v-validate="'required'" :class="{'danger': errors.has('job') }" v-model="data.job" type="job" class="form-control" id="job" name="job" placeholder="Enter the user job">
                                         <span class="danger">{{ errors.first('job') }}</span>
                                    </div> 
                                   
                                    <div class="form-group row">
                                        <label for="skills">Your Skills</label>
                                        <select  class="form-control selectpicker" id="skills" v-model="data.skills" multiple>
                                        <!--     <option v-for='skill in skills' :value="skill.id"  v-if='data.skills.id == skill.id' selected>{{skill.name}}</option>
                                            <option v-for='skill in skills' :value="skill.id"  v-else>{{skill.name}}</option>  -->  
                                            <option v-for='skill in skills' :value="skill.id">{{skill.name}}</option> 
                                        </select>
                                    </div>

                                    <div class="form-group row">
                                      <label for="publicinfo" class="col-4 col-form-label">Public Info</label> 
                                      <div class="col-8">
                                        <textarea id="publicinfo" name="about" cols="40" rows="4" class="form-control" v-model='data.about'></textarea>
                                      </div>
                                    </div>

                                    <div class="form-group row">
                                        <label>Profile Picture</label>
                                        <input :class="{'danger': errors.has('avatar') }"  name="avatar" v-validate="'mimes:image/jpeg,image/png,image/jpg'" class="form-control" type="file" @change='fileChange'>
                                        <span class="danger">{{ errors.first('avatar') }}</span>
                                    </div>

                                    <div class="form-group row">
                                        <p><b>Gender</b></p>
                                        <input v-model="data.gender" type="radio" value="male" id="male" name="gender" checked>
                                        <label for="male">Male</label>
                                        <input v-model="data.gender" type="radio" id="female" name="gender" value="female" style="margin-left: 30px">
                                        <label for="female">Female</label>
                                    </div>

                                    <div class="form-group row">
                                      <label for="confirm_password" class="col-4 col-form-label">Confirm Password</label> 
                                      <div class="col-8">
                                        <input  v-validate="'required'" :class="{'danger': errors.has('confirm_password') }" v-model="data.confirm_password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" class="form-control here" type="password">
                                      </div>
                                      <span class="danger">{{ errors.first('confirm_password') }}</span>
                                    </div>  

                                    <div class="form-group row">
                                      <div class="offset-4 col-8">
                                        <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
                                      </div>
                                    </div>
                                  </form>
                          </div>
                      </div>
                  </div>
              </div>
          </div>  
        </div>  
</div>
  </div>
</template>


<script>
    export default {
        data() {
            return {
               countries : [],
               skills    : [],
               data      : {
                  skills: []
               },
               successMsg: '',
               errorMsg  : '',
                  /* alert */
               error_alert: false,
               success_alert: false,
            }
        },

        computed: {
           id() {
              return this.$route.params.id
           }
        },

        methods: {
          getData(){
               axios.get('/api/profile/edit').then(res => { 
                this.data = res.data.user
                this.countries = res.data.countries
                this.skills    = res.data.skills
               })  
          },

          fileChange(e) {
            this.data.avatar = e.target.files[0]
          },

           updateData() {
             this.$validator.validateAll().then((result) => {
                if (result) {

                   var formData = new FormData()
                        Object.keys(this.data).forEach(key => {
                          formData.append(key, this.data[key])
                        })

                        axios.post('/api/profile/update', formData, {
                            headers: {
                              'Content-Type': 'multipart/form-data'
                            }
                        })
//axios.post('/api/profile/update/'+this.id, this.data)
                   .then(res => {
                    // return console.log(res.data)
                    this.$store.dispatch('userDataAction')
                      /* alert */
                    this.successMsg    = res.data  
                    this.success_alert = true
                    this.error_alert   = false
                    setTimeout(() => this.success_alert = false, 8000);  
                  })
                } else {
                   this.error_alert   = true
                   this.success_alert = false
                   setTimeout(() => this.error_alert = false, 5000);  
                }
              })     
           }
    
        },

        created() {
            this.getData();
        }
    }
</script>

<style>

</style>