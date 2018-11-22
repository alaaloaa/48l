<template>
  <div>
     <div>
        <div v-show='error_alert' id="error-alert" class='error-alert'>
           Fix The Errors And Try Again.
           <button @click='close' class="close btn" style="color: #fff">x</button>
        </div>  
        <div v-show='success_alert' id="success-alert" class='success-alert'>
           <button @click='close' class="close btn">x</button>
           Your Job Created Successfuly.
        </div>        
     </div>
  </div>
</template>


<script>
    export default {
        data() {
            return {
              error_alert: false,
              success_alert: false,
            }
        },

        props: {
          alert: {
            type: Boolean,
            default: false
          },  
          success: {
            type: Boolean,
            default: false
          }, 
          error: {
            type: Boolean,
            default: false
          }, 
        },

        computed: {
          successAlert() {
             if (this.success) {               
                this.error_alert   = false
                this.success_alert = true
                $('#success_alert').fadeOut(5000)
             }
             return 'success'  
          },

          errorAlert() {
            if (this.error) {                
               this.error_alert   = true
               this.success_alert = false
               $('#success_alert').fadeOut(5000)

            } 
            return 'error'
          },

        },

        methods: {
          close() {
            this.success_alert = false
            this.error_alert   = false
              this.success = false
                this.error = false
          }
        },

        created() {
          this.successAlert
          this.errorAlert
        },

        watch: {
           success() {
            this.successAlert
            if (this.success_alert) {            
              this.success = false
            }
          },
          error() {
            this.errorAlert
            if (this.error_alert) {
              this.error = false                
            }
          } 
        }
    }
</script>

<style>
  #error-alert, #success-alert{
    position: relative;
    padding-right: 20px 
  }
  .close{
    position: absolute;
    right: 5px;
    top: 0px;
    font-size: 25px !important;
    font-weight: bold !important;

  }
</style>