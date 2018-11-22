<template>
	<div>
		<div class="container msg-container">
		<h3 class=" text-center"><router-link :to="{path: 'messages/view/'+Ruser.id}">{{Ruser.FullName}}</router-link></h3>
		<div class="messaging">
		      <div class="inbox_msg">
		        <div class="inbox_people">
		          <div class="headind_srch">
		            <div class="recent_heading">
		              <h4>Recent</h4>
		            </div>
		            <div class="srch_bar">
		              <div class="stylish-input-group">
		                <input type="text" class="search-bar"  placeholder="Search" >
		                <span class="input-group-addon">
		                <button type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
		                </span> </div>
		            </div>
		          </div>
		         
		        </div>

		                                           <!-- messages -->
		        <div class="mesgs">
		          <div class="msg_history">
		                <div v-for='message in messages' v-if='message.user_id !== userData.id' class="incoming_msg">
		                  <div class="incoming_msg_img">
		                    <div style="background: 'url(' + Ruser.avatar + ')' }" alt="sunil"></div>
		                  </div>
		                  <div class="received_msg">
		                    <div class="received_withd_msg">
		                      <p>{{message.msg}}</p>
		                      <span class="time_date"> 11:01 AM    |    June 9</span></div>
		                  </div>
		                </div> 
		                          <!-- else -->
		                <div v-else class="outgoing_msg">
		                  <div class="incoming_msg_img pull-right" style='margin-left:15px'><img :src="userData.avatar" alt="sunil"> </div>
		                  <div class="sent_msg">
		                    <p class='msg'>{{message.msg}}</p>
		                    <span class="time_date"> 11:01 AM    |    June 9</span> 
		                  </div>
		                </div>
		          </div>
		          		         <!-- send message -->
		          <form @submit.prevent='sendMessage'>
		            <div class="type_msg">
		              <div class="input_msg_write">
		                  <div class="form-group">
		                     <textarea v-model='message.msg' class="form-control" type="textarea" id="description" name="msg" rows="3"></textarea>
		                  </div>
		                <button class="msg_send_btn" type="submit" ><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
		              </div>
		            </div>
		          </form>

		        </div>
		      </div>      
		    </div>
		</div>

	</div>
</template>

<script>
    // import io from 'socket.io-client';
    import { mapState } from 'vuex'
    let io     = require('socket.io-client')
    let socket = io.connect('http://localhost:3000')

    export default {
        data() {
            return {
               messages: [],
               Ruser   : [],
               message : {}
            }
        },

        computed: {
           id() {
              return this.$route.params.id
           },
            ...mapState([
                'check',
                'userData'
            ]),
        },

        methods: {
           getData(){
               axios.get('/api/messages/view/'+this.id).then(res => { 
                 this.messages = res.data.msgs
                 this.Ruser    = res.data.Ruser
               })  
                // console.log(this.user)
           },
           sendMessage(){
               axios.post('/api/messages/send/'+this.id, this.message).then(res => { 
                  console.log('Your Message Sent Successfuly.')             	   
               })  
               this.messages.push(this.message)
           },

            chatData (user) {
	            socket.emit('get_chat_with_user', {s_id: this.userData.id, r_id: this.id})
	            socket.on('send_chat_with_user', (data) => {
	                console.log('send_chat_with_user')
	                console.log(data)
	            })
            }
    
        },

        created() {
            this.getData();
            // this.chatData();
        },

        watch: {
          $route() {this.getData()}
        }
    }
</script>

<!-- 

<template>
    <div>
        <div class="users-chat-container">
            <div v-for="(user, index) in users" :key="index" class="users-chat" @click="openChat(user)">
                <div>{{user.name}}</div>
            </div>
        </div>
    </div>
</template>

<script>

let io = require('socket.io-client')
let socket = io.connect('http://localhost:3000')


export default {
    data () {
        return {
            loading: false,
            users: []
        }
    },
    methods: {
        openChat (user) {
            socket.emit('get_chat_with_user', {my_id: 1, user_id: user.id})
            socket.on('send_chat_with_user', (data) => {
                console.log('send_chat_with_user')
                console.log(data)
            })
        }
    },
    mounted () {
        socket.emit('user_trying_to_fetch_his_data', {id: 1})

        socket.on('send_users_data', (data) => {
            console.log('created')
            this.users = data.users
        })
    }
}
</script>

<style>
.users-chat-container {
    position: fixed;
    right: 0;
    top: 0;
    width: 200px;
    height: 100%;
    background: #eee;
    overflow-y: scroll;
}
.users-chat-container .users-chat {
    padding: 10px 15px;
    text-align: left;
    cursor: pointer;
}
.users-chat-container .users-chat:hover {
    background: #ddd;
}
</style>
 -->