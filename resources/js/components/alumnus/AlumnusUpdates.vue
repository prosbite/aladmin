<template>
    <div class="col-xs-10 s-pad">
        <div class="admin-content bg-white">
            <div class="head oh border-bot mb-10">
                <h4 class="pull-left c-bright-green normal">Updates Monitor</h4>
                <div class="right-element pull-right c-bright-green">
                    <input type="text" placeholder="Search" class="border-light">
                </div>
            </div>
            <div class="body">
                <div class="row">
                    <div class="col-xs-5 s-pad">
                        <div class="alumni-list pl-10 pr-10 border-right">
                            <ul class="ptb-15 border-bot stud-list">
                                <li @click="students.current=st;getUpdates()" v-for="st in students.all" class="oh mb-24 " :class="isActive(st)">
                                    <img src="/img/blankuser.png" alt="" class="pull-left mr-15">
                                    <div style="padding-top:0px;" class="mb-15">
                                        <h4>{{st.fname + " " + st.mname.charAt(0) + ". " + st.lname}}</h4>
                                        <h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">{{st.prog_name}}</span></h5>
                                        <h6 class="mt-3 c-sdark">Batch {{st.sch_year}}</h6>
                                        <h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
                                    </div>
                                    <div class="oh" style="padding-top:5px;padding-right:15px">
                                        <a href="" class="f-11 c-bright-green pull-left">View Full Information</a>
                                        <a href="" class="f-11 c-bright-green pull-right">Downloads</a>
                                    </div>												
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-xs-7 s-pad">
                        <div class="pl-10 pr-10">
                            <table class="table table-striped">
                                <tbody class="f-11 c-bright-green">
                                    <tr v-for="update in updates">
                                        <td class="c-light">{{update.activity}}</td>
                                        <td class="mw-50">{{update.date}}</td>
                                        <td class="mw-50">{{update.time}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</template>

<script>
export default {
    data(){
        return {
            updates: [],
			students: {current:{}, all:[]}
        }
    },

    methods: {
        init:function(){
            $.get("updates/init",function(data){
                this.students.all = data;
                if(this.students.all.length > 0){
                    this.students.current = this.students.all[0];
                    this.getUpdates();
                }
            }.bind(this));
        },

        getUpdates:function(){
            $.get("updates/updates",{id:this.students.current.ssi_id},function(data){
                this.updates = data;
            }.bind(this));
        },

        isActive:function(st){
            if(st.ssi_id == this.students.current.ssi_id){
                return "stud-active";
            }
            return "";
        }	
    },

    mounted(){
        this.init();
    }
}
</script>