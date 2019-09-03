<template>
    <div class="company-left-inner-pane2">
        <h5 class="c-bright-green" style="border-bottom: 1px solid #e3e3d7;">Jobs</h5>
        <ul>
            <li :class="isActive(j.jpost_id)" v-for="j in jobs.all" @click="setJobPost(j)">
                <h5 class="mt-0"><a @click.prevent="" href="#" class="c-bright-green">{{j.title}}</a></h5>
                <p class="no-margin f-10 c-bright-green">Date Posted: <span class="c-sdark">{{j.date_posted}}</span></p>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    data(){
        return {
            jobs:{all:[], current:{}},
        }
    },
    props:['company'],

    methods: {
        jobposts:function(){
            $.get("/company/ajx/jobposts", {id:this.company}, function(data){
                this.jobs.all = data;
                if(data.length > 0){
                    this.setJobPost(data[0]);
                    // this.jobs.current = data[0];
                }
            }.bind(this));
        },

        isActive:function(j){
            if(j == this.jobs.current.jpost_id){
                return 'active';
            }
            return '';
        },

        setJobPost:function(j){
            this.jobs.current = j;
            this.$emit('set-job-post', j.jpost_id);
        }
    },

    mounted(){
        this.jobposts();
    }
}
</script>