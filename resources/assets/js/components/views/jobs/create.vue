<template>
  <div>
    <div>
        <div v-show='error_alert' id="error-alert" class='error-alert'>
           Fix The Errors And Try Again.
        </div>  
        <div v-show='success_alert' id="success-alert" class='success-alert'>
           Your Job Created Successfuly.
        </div>        
    </div>
    <div class="container m-t-65 recrutier">
                         <!-- Error Message -->

            <div class="row">
                <div class="col-xs-12">
                    <div class="sub sub-l sub-xs-t">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <h3 style="margin-bottom: 25px; text-align: center;">Create new Job</h3>

                                <form @submit.prevent='createJob' >

                                    <div class="form-group">
                                        <label for="name">Job Name</label>
                                        <input v-validate="'required'" :class="{'danger': errors.has('name') }"  type="text"  class="form-control" id="name" name="name" placeholder="Job Name" v-model='data.name'>
                                        <span class="danger">{{ errors.first('name') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="title">Job Title</label>
                                        <input name="title" v-validate="'required'" :class="{'danger': errors.has('title') }" type="text"  class="form-control" id="title" placeholder="Job Title" v-model='data.title'>
                                        <span class="danger">{{ errors.first('title') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="description">Job Description</label>
                                        <textarea name="description" v-validate="'required'" :class="{'danger': errors.has('description') }"  class="form-control" type="textarea" id="description" placeholder="Job Description ... " maxlength="140" rows="7"  v-model='data.description'></textarea>
                                        <span class="danger">{{ errors.first('title') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Job Address</label>
                                        <input name="address" v-validate="'required'" :class="{'danger': errors.has('address')}" type="text"  class="form-control" id="address" placeholder="Job Address"  v-model='data.address'>
                                        <span class="danger">{{ errors.first('address') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="">Experience</label>
                                        <select name="experience" v-validate="'required'"   class="form-control"  v-model='data.experience'>
                                           <option disabled>Please select the experience</option>
                                           <option value="0-1">0-1</option>
                                           <option value="1-2">1-2</option>
                                           <option value="2-5">2-5</option>
                                           <option value="2-7">2-7</option>
                                           <option value="3-8">3-8</option>
                                           <option value="5-8">5-8</option>
                                           <option value="5-10">5-10</option>
                                        </select>
                                        <span class="danger">{{ errors.first('experience') }}</span>  
                                    </div>

                                   
                                    <div class="form-group">
                                        <label for="education">education</label>
                                        <input name="education" v-validate="'required'" :class="{'danger': errors.has('education') }" type="text"  class="form-control" id="education"  v-model='data.education' placeholder="what is the education that you need..">
                                        <span class="danger">{{ errors.first('education') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="country">Job Country</label>
                                        <select name="country" v-validate="'required'"  class="form-control" id="country" v-model='data.country'>
                                            <option disabled checked>Please select job country</option>
                                               <option  v-for='country in countries'>{{country.name}}</option>
                                        </select>
                                        <span class="danger">{{ errors.first('country') }}</span>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="skills">Job Skills</label>
                                        <select name="skills" v-validate="'required'"  class="form-control" id="skills" v-model='data.skills' multiple>
                                            <option v-for='skill in skills' :value='skill.id'>{{skill.name}}</option>   
                                        </select>
                                        <span class="danger">{{ errors.first('skills') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="company_name">Company Name</label>
                                        <input name="company_name" v-validate="'required'" :class="{'danger': errors.has('company_name') }" type="text"  class="form-control" id="company_name" v-model='data.company_name' placeholder="Company Name">
                                        <span class="danger">{{ errors.first('company_name') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="about_company">About Company</label>
                                        <input name="about_company" v-validate="'required'" :class="{'danger': errors.has('about_company') }" type="text"  class="form-control" id="about_company" v-model='data.about_company' placeholder="write something about your country">
                                        <span class="danger">{{ errors.first('about_company') }}</span>
                                    </div>
      
                                    <div class="form-group">
                                        <label>Company Logo</label>
                                        <input :class="{'danger': errors.has('logo') }"  name="logo" v-validate="'required|mimes:image/jpeg,image/png,image/jpg'" class="form-control" type="file" @change='fileChange'>
                                        <span class="danger">{{ errors.first('logo') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label for="salary">Salary In Dollars</label>
                                        <input name="salary" v-validate="'required'" :class="{'danger': errors.has('salary') }" type="number"  class="form-control" id="salary" v-model='data.salary' placeholder="Salary">
                                        <span class="danger">{{ errors.first('salary') }}</span>
                                    </div>

                                     <div class="form-group">
                                        <label for="">Job Type</label>
                                        <select :class="{'danger': errors.has('job_type') }" name="job_type" v-validate="'required'"   class="form-control" id=""  v-model='data.job_type'>
                                           <option disabled>Please select the job_type</option>
                                           <option value="full_time">Full Time</option>
                                           <option value="hours">Hours</option>
                                        </select>
                                        <span class="danger">{{ errors.first('job_type') }}</span>
                                    </div>

                                    <div class="form-group">
                                        <p><b>Availabalitiy</b></p>
                                        <input type="radio" id="Yes" v-model='data.availability' value='1' checked>
                                        <label for="Yes">Yes</label>
                                        <input type="radio" id="No" v-model='data.availability' value="0" style="margin-left: 30px">
                                        <label for="No">No</label>
                                    </div>


                                   <button type="submit" id="submit" class="btn btn-primary pull-right">Create</button>
                               </form>
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
               countries: [],
               skills: [],
               data: {},
               error_alert: false,
               success_alert: false,
            }
        },

        methods: {
           getData(){
               axios.get('/api/job/create').then(res => { 
                this.countries = res.data.countries
                this.skills    = res.data.skills
               })  
            },

            fileChange(e) {
                this.data.logo = e.target.files[0]
             },

            createJob(){

                    /* validate data */
                    this.$validator.validateAll().then((result) => {
                        if (result) {
                        var formData = new FormData()
                        Object.keys(this.data).forEach(key => {
                          formData.append(key, this.data[key])
                        })

                        axios.post('/api/job/process', formData, {
                            headers: {
                              'Content-Type': 'multipart/form-data'
                            }
                        })

                        this.resetData()

                        this.success_alert = true
                        $("#success-alert").fadeIn(1000).fadeOut(10000)   
                    } else {
                        this.error_alert = true
                        $("#error-alert").fadeIn(1000).fadeOut(7000)   
                    }
                })
            },

            resetData() {
                this.data = {
                    skills : [],
                    availability: 1
                }

        },
    
        },

        

        created() {
            this.resetData();
            this.getData();

        }
    }
</script>