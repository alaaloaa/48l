<template>
   <div>
     <div id="app" class='container margin-top'>
        <v-app id="inspire">
          <v-card>
            <v-card-title>
              <b style="font-size: 20px; color: #333">My Jobs</b>
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
              :items="jobs"
              :search="search"
            > 
              <template slot="items" slot-scope="props">
                <td><router-link :to='{path: "/job/view/"+props.item.id}'>{{ props.item.name }}</router-link></td>
                <td class="text-xs">
                  <router-link v-if='props.item.apply_count !== 0' :to='{path: "/profile/view/applyments/"+props.item.id}'>{{ props.item.apply_count}}
                  </router-link>
                  <span v-else>{{ props.item.apply_count}}</span>
                </td>
                <td>
                   <div >
                      <span v-if='props.item.availability === 1' @click='availability(props.item.id)' class="btn btn-success fa fa-thumbs-up"></span>
                      <span v-else class="btn btn-danger fa fa-thumbs-down" @click='availability(props.item.id)'></span> 
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
        jobs: [],
        headers: [
        {
          text: 'Name',
          align: 'center',
          value: 'name'
        },
        {
          text: 'Applies',
          align: 'center',
          value: 'aplly'
        },
        {
          text: 'Availability',
          align: 'center',
          value: 'availability'
        },

       ] 
      }
    },

    computed: {
     
    },

    methods: {
      getData(){
         axios.get('/api/profile/view/jobs').then(res => { 
           this.jobs = res.data
         })  
      },
      availability(id) {
         axios.get('/api/job/availability/'+id).then(res => { 
            this.getData()
            console.log(res.data)
         })
      },
    
    },

    created() {
        this.getData();
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