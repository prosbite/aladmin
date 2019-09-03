<template>
    <div class="col-xs-10 s-pad">
        <div class="admin-content bg-white">
            <div class="head oh border-bot mb-10">
                <h4 class="pull-left c-bright-green normal">Alumnus Administrator Portal</h4>
                <div class="right-element pull-right c-bright-green">
                    <label for="">Batch: </label>
                    <select name="" id="batch" class="border-light" @change="setBatch()">
                        <!-- <option value="">2012 - 2013</option> -->
                        <option v-for="b in batch" :value="b">{{b}}</option>
                    </select>
                </div>
            </div>
            <div class="body">
                <center><h4 v-if="alumni.all.length == 0">No alumni found for this batch.</h4></center>  
                <div class="row" v-if="alumni.all.length > 0">
                    <div class="col-xs-5 s-pad">
                        <div class="alumni-list pl-10 pr-10 border-right">
                            <ul class="ptb-15 border-bot">
                                <li v-for="al in alumni.all" class="oh mb-24">
                                    <img src="img/blankuser.png" alt="" class="pull-left mr-15">
                                    <div style="padding-top:0px;" class="mb-15">
                                        <h4>{{al.fname + " " + al.mname.charAt(0) + ". " + al.lname}}</h4>
                                        <h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">{{al.prog_name}}</span></h5>
                                        <h6 class="mt-3 c-sdark">Batch {{al.sch_year}}</h6>
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
                            <div class="profile mb-24">
                                <h5 class="border-bot mt-3 f-13 pb-10 c-light mb-10">Profile</h5>
                                <div class="info-tabs">
                                    <ul class="nav nav-tabs mb-15">
                                        <li class="active"><a data-toggle="tab" href="#pInfo" class="f-12">Personal Info</a></li>
                                        <li><a data-toggle="tab" href="#fInfo" class="f-12">Family Info</a></li>
                                        <li><a data-toggle="tab" href="#eduInfo" class="f-12">Education</a></li>
                                        <li><a data-toggle="tab" href="#eliInfo" class="f-12">Eligibility</a></li>
                                        <li><a data-toggle="tab" href="#workInfo" class="f-12" style="width:117px;">Work Experience</a></li>
                                    </ul>


                                    <div class="tab-content">
                                        <div id="pInfo" class="tab-pane fade in active">
                                        <div class="personal-info">
                                            <div class="body" style="border-bottom:none;">
                                                <ul>
                                                    <li>
                                                        <h6 class="c-light f-12">Gender</h6>
                                                        <h5 class="c-dark">{{alumni.current.gender}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Birth Date</h6>
                                                        <h5 class="c-dark">{{alumni.current.bday}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Birth Place</h6>
                                                        <h5 class="c-dark">{{alumni.current.birthplace}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Age</h6>
                                                        <h5 class="c-dark">{{alumni.current.age}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Nationality</h6>
                                                        <h5 class="c-dark">{{alumni.current.nationality}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Marital Status</h6>
                                                        <h5 class="c-dark">{{alumni.current.civ_status}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Mobile #</h6>
                                                        <h5 class="c-dark">{{alumni.current.phone_number}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Telephone #</h6>
                                                        <h5 class="c-dark">N/A</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Email</h6>
                                                        <h5 class="c-dark">{{alumni.current.email}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Religion</h6>
                                                        <h5 class="c-dark">{{alumni.current.religion}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Language</h6>
                                                        <h5 class="c-dark">English, Tagalog, Bisaya, Ilocano, Java, C#, C++, VB.net, PHP, Ruby, Python, Haskel, Assembly</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Present Address</h6>
                                                        <h5 class="c-dark">{{getAddress(alumni.current.address)}}</h5>
                                                    </li>
                                                    <li>
                                                        <h6 class="c-light f-12">Permanent Address</h6>
                                                        <h5 class="c-dark">{{getAddress(alumni.current.address)}}</h5>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="footer">
                                                <div class="update-info">
                                                    <img src="img/profile/pencil.png" alt="" class="pull-left">
                                                    <a class="f-10 c-green pull-left" data-toggle="modal" data-target="#personalModal">Update your personal information</a>
                                                </div>
                                            </div>
                                        </div>
                                        </div>

                                        <div id="fInfo" class="tab-pane ">
                                        family info
                                        </div>

                                        <div id="eduInfo" class="tab-pane ">
                                        education
                                        </div>

                                        <div id="eliInfo" class="tab-pane ">
                                        eligibility
                                        </div>

                                        <div id="workInfo" class="tab-pane ">
                                        None
                                        </div>

                                    </div>


                                </div>
                            </div>



                            <div class="jobs">
                                <h5 class="border-bot mt-3 f-13 pb-10 c-light mb-10">Jobs</h5>
                                <div class="info-tabs">
                                    <ul class="nav nav-tabs mb-15">
                                        <li class="active"><a data-toggle="tab" href="#applied" class="f-12">Applied</a></li>
                                        <li><a data-toggle="tab" href="#hired" class="f-12">Hired</a></li>
                                        <li><a data-toggle="tab" href="#nothired" class="f-12">Not Hired</a></li>
                                    </ul>


                                    <div class="tab-content">
                                        <div id="applied" class="tab-pane fade in active">
                                        <div class="personal-info">
                                            <div class="body" style="border-bottom:none;">
                                                <ul>
                                                    <li class="border-bot mb-5">
                                                        <h4 class="mt-0"><a href="" class="c-dark">AZURE Mindstream Company Incorporated</a></h4>
                                                        <p class="f-12 mb-5">Los Angeles, California USA</p>
                                                        <h6 class="mt-0 mb-10">Position: <span class="c-bright-green f-14">Database Administrator</span></h6>
                                                        <p class="f-13 c-dark">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum voluptas, nemo dolores quaerat, quidem similique, quasi facilis expedita culpa commodi eius vero minus minima, ducimus illo perspiciatis pariatur quos nam.</p>
                                                    </li>
                                                    <li class="border-bot">
                                                        <h4 class="mt-0"><a href="" class="c-dark">International Business Machine(IBM)</a></h4>
                                                        <p class="f-12 mb-5">Los Angeles, California USA</p>
                                                        <h6 class="mt-0 mb-10">Position: <span class="c-bright-green f-14">Database Administrator</span></h6>
                                                        <p class="f-13 c-dark">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum voluptas, nemo dolores quaerat, quidem similique, quasi facilis expedita culpa commodi eius vero minus minima, ducimus illo perspiciatis pariatur quos nam.</p>
                                                    </li>
                                                </ul>
                                            </div>
                                            
                                        </div>
                                        </div>

                                        <div id="hired" class="tab-pane ">
                                        Hired! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque omnis a sint distinctio, amet! Nisi perspiciatis, consequatur tempora repellat totam corrupti repudiandae fugiat commodi eaque non explicabo odio accusantium quas.
                                        </div>

                                        <div id="nothired" class="tab-pane ">
                                        Not Hired! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur commodi quasi in, quo recusandae debitis beatae, mollitia aliquam vitae explicabo rem nisi! Cupiditate consequuntur suscipit ratione eius deserunt maxime et?
                                        </div>

                                    </div>
                                </div>
                            </div>
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
            batch: ['2018-2019', '2019-2020'],
            alumni:{current:{}, all:[]},
        }
    },

    methods: {
        setBatch:function(){
                let batch = $('#batch').val();
                this.alumnus(batch);
            },

            alumnus:function(batch){
                $.get("alumnus/batch", {batch:batch}, function(data){
                    this.alumni.all = data;
                    this.defaultFirst(this.alumni);
                    console.log(this.alumni.all);
                }.bind(this));
            },

            getAddress:function(address){
                var arr = [];
                for(var add in address)
                {
                    arr.push(address[add]);
                }
                if(arr.length > 0){
                    arr = arr[0];
                    return arr.street + ", " + arr.brgy_name + " " + arr.city_name;
                }

                return "N/A";
            },

            // alumnusInfo:function(){

            // },

            defaultFirst:function(arr){
                if(arr.all.length > 0){
                    arr.current = arr.all[0];
                }
            },
    },

    mounted(){
        this.setBatch();
    }
}
</script>