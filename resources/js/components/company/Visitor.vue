<template>
    <div class="col-xs-10 s-pad">
        <div class="admin-content bg-white">
            <div class="head oh border-bot mb-10">
                <h4 class="pull-left c-bright-green normal">Visitor</h4>
                <div class="right-element pull-right c-bright-green">
                    <input type="text" placeholder="Search" class="border-light">
                </div>
            </div>
            <ul>
                <li class="oh border-bot ptb-10" v-for="c in companies.all">
                    <div>
                        <div class="pull-left mr-45 c-dark">
                            <h4 class="f-14 bold mb-3 mt-0" style="width:300px;">{{c.company_name}}</h4>
                            <div class="f-10">
                                <span>{{c.address}}</span>
                                <span class="pull-right c-bright-green">{{c.reg_date}} <span class="ml-15 c-bright-green">{{c.reg_time}}</span></span>
                            </div>
                        </div>
                        <a :href="companyDetails(c.company_id)" class="mr-24 btn-admin c-bright-green">more information</a>
                        <button button class="mr-24 btn-admin c-bright-green">send message</button>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            companies:{
                all:[],
                current:{},
            },
        }
    },

    methods: {
        init:function(){
            $.get('/company/ajx/companies', function(data){
                this.companies.all = data;
                if(data.length > 0){
                    this.companies.current = data[0];
                }
            }.bind(this));
        },

        companyDetails:function(id){
            return '/company/company/business_overview/' + id;
        }
    },

    mounted(){
        this.init();
    }
}
</script>