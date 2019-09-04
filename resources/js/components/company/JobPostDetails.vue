<template>
    <div class="body c-sdark f-14 mb-15" style="padding-right:15px;">
        <div class="oh mb-5">
            <h5 class="c-bright-green f-18 mt-0 pull-left">Database Administrator</h5>
            <span class="c-bright-green f-11 pull-right">{{jPost.date_posted}} &nbsp;&nbsp; <span>{{jPost.time_posted}}</span></span>
        </div>

        <p class="f-13 lh-17 mb-24">{{jPost.description}}</p>
        

        <h5 class="c-bright-green mb-5 bold">Skill Requirements</h5>
        <p class="f-13 lh-17 mb-24">{{jPost.skills_requirement}}</p>

        <h5 class="c-bright-green mb-5 bold">Educational Requirements</h5>
        <p class="f-13 lh-17 mb-24">{{jPost.educational_requirement}}</p>

        <h5 class="c-bright-green mb-5 bold">Years of Experience</h5>
        <p class="f-13 lh-17 mb-24">{{jPost.other_requirements}}</p>


        <div style="background-color:#008C8C;padding:0px 15px;" class="oh">
            <span style="color:#FFF;font-size:45px;" class="pull-left mr-5">P</span>
            <div class="mt-10">
                <span class="c-white f-12">Salary</span>
                <p class="c-white no-border f-18">{{jPost.salary_range}}/Month</p>
            </div>
        </div>

    </div>
</template>

<script>
export default {
    props:[
        'jid'
    ],

    data(){
        return {
            jPost:{}
        }
    },

    methods: {
        fetchDetails:function(id){
            $.get("/company/ajx/jobpost",{'id':id},function(data){
                this.jPost = data;
                console.log(data);
            }.bind(this));
        }
    },

    watch: {
        jid: {
        handler: function(val, oldVal) {
            this.fetchDetails(val);
        },
        deep: true
        }
    }, 

    mounted(){

    }
}
</script>


