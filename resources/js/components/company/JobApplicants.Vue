<template>
    <ul class="border-bot">
        <li class="oh mb-24" v-for="ap in applicants">
            <img src="/img/blankuser.png" alt="" class="pull-left mr-15">
            <div>
                <h4>{{ap.fname + " " + ap.mname.charAt(0) + ". " + ap.lname}}</h4>
                <h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">{{ap.prog_name}}</span></h5>
                <h6 class="mt-3 c-sdark">Batch {{ap.sch_year}}</h6>
                <h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
                <div style="width:500px;margin-top:24px;">
                    <a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
                    <a href="" :class="setColor(ap)" class="pull-right f-11">{{ap.status}}</a>
                </div>
            </div>
        </li>
        <li v-if="applicants.length==0">
            <h3 class="c-green">There are no applicants for this post.</h3>
        </li>
    </ul>
</template>

<script>
export default {
    props:[
        'job_post'
    ],
    data(){
        return {
            applicants:[]
        }
    },

    methods: {
        fetchApplicants:function(){
            $.get("/company/ajx/applicants",{id:this.job_post},function(data){
                this.applicants = data;
            }.bind(this));
        },

        setColor:function(ap){
            if(ap.status == 'Hired'){
                return 'c-bright-green';
            }
            return 'c-orange';
        }
    },

    watch: {
        job_post: {
            handler: function(val, oldVal) {
                this.fetchApplicants();
            }
        }
    },

    mounted(){

    }
}
</script>

<style scoped>
    h3 {
        font-size: 16px;
    }
</style>