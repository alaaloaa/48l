<template>
   <div>
     <div id="app" class='container margin-top'>
        <v-app id="inspire">
          <v-card>
            <v-card-title>
              <b style="font-size: 20px; color: #333">Applyments</b>
              <v-spacer></v-spacer>
              <v-text-field
                v-model="search"
                append-icon="search"
                label="Search"
                single-line
                hide-details
              ></v-text-field>
            </v-card-title>
            <v-data-table
              :headers="headers"
              :items="applyments"
              :search="search"
            > 
              <template slot="items" slot-scope="props">
                <td><router-link :to='{path: "/profile/view/"+props.item.user.id}'>{{ props.item.user.fullName }}</router-link></td>
                <td>
                   <div >
                      <span v-if='props.item.status === 1' @click='apply_status(props.item.id, props.item.user.id)' class="btn btn-success fa fa-thumbs-up"></span>
                      <span v-else class="btn btn-danger fa fa-thumbs-down" @click='apply_status(props.item.id, props.item.user.id)'></span> 
                  </div>
                </td>
              </template>
              <v-alert slot="no-results" :value="true" color="error" icon="warning">
                Your search for "{{ search }}" found no results.
              </v-alert>
            </v-data-table>
          </v-card>
        </v-app>
      </div>
   </div>
</template>

<script>
  export default {
    data () {
      return {
        search: '',
        applyments: [],
        headers: [
        {
          text: 'Name',
          align: 'center',
          value: 'name'
        },
        {
          text: 'status',
          sortable: false,
          align: 'center',
          value: 'availability'
        },

       ] 
      }
    },

    computed: {
      jobId() {
      	 return this.$route.params.id
      },

       jobf() {
          Object.keys(this.applyments).forEach(function (job) {
          	if (job) {
				return console.log(job); // key          		
          	} else {
          		return console.log('empty')
          	}
		});
      },
    },

    methods: {
      getData(){
         axios.get('/api/profile/view/applyments/'+this.jobId).then(res => { 
           this.applyments = res.data
         })  
      },
      
      job() {
          Object.keys(this.applyments).forEach(function (job) {
          	if (job) {
				return console.log(job); // key          		
          	} else {
          		return console.log('empty')
          	}
		});
      },

      apply_status(id, userId) {
         axios.get('/api/job/apply_status/'+id+'/'+this.jobId+'/'+userId).then(res => { 
            this.getData()
            console.log(res.data)
         })
      },
    
    },

    mounted() {
        this.getData();
    },

    created() {
        // this.getData();
        this.job();
        this.jobf;
    },
  }
</script>

<style>
  th {
     font-weight: bold !important;
     font-size: 17px !important
  }
  td{
    text-align: center;
  }
  th:hover{
    background: #fff !important;
    color: #000 !important;
  }

</style>