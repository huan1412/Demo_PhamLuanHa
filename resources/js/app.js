require('./bootstrap');
new Vue ({
 	el: '#app',
 	data: {
     	posts: ""
 	},
 	mounted() {
     	axios.get('/posts').then(response => this.posts = response.data);
 	},
 	methods: {
   	getRandNews: function () {
        	axios.get('/posts_random').then(response => this.posts = response.data);
    	}
   }
});