<template>
    <div id="proxy-list" class="inner-background">
        <div class="heading">
            <h2>СПИСОК HTTP/SOCKS PROXY</h2>
        </div>
        <div class="proxy-list">
            <div class="info">
                <img src="../static/images/ico_book.png" alt="">
                <p>Предоставляем для вас список актуальных прокси в данный момент. Здесь вы можете ознакомиться с нашим списком анонимных прокси. Обратите внимание, что в разное время суток, количество онлайн может меняться. Список представляен только для ознакомления, прокси из списка не будут работать без покупки тарифного плана.</p>
            </div>
            <div class="table">
                <div class="heading">
                    <div class="filter-search">
                        <label class="placeinput">
                            <input type="text" v-model="search" required="1" />
                            <div class="place_holder"><span>Прокси</span> по странам</div>
                        </label>
                        <span class="icon"></span>
                    </div>
                    <strong>#</strong>
                    <strong>Ip Adress</strong>
                    <strong>COUNTRY</strong>
                    <strong>City</strong>
                    <strong>SPEED</strong>
                    <strong>UPTIME</strong>
                </div>
                <div class="list-box clearfix">
                    <ul class="list-countries row">
                        <li class="col-sm-12 all-countries">
                            <a href="#" class="active" @click.prevent="chooseCountry($event)">
                                <img src="../static/images/flag.png" alt="">
                                <span class="country">Все страны</span>
                                <span class="quantity">•  27695</span>
                            </a>
                        </li>
                        <li class="col-sm-6" v-for="item in filteredList" >
                            <a href="#" @click.prevent="chooseCountry($event)">
                                <img src="../static/images/flag.png" alt="">
                                <span class="country">{{ item.title }}</span>
                                <span class="quantity">• {{ item.quantity }}</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="list-details">
                        <li v-for="item in activeList">
                            <div class="column">{{item.hash}}</div>
                            <div class="column">{{item.ip}}</div>
                            <div class="column"><img src="../static/images/flag.png" alt=""> {{item.country}}</div>
                            <div class="column">{{item.city}}</div>
                            <div class="column">{{item.speed}} Kbs</div>
                            <div class="column">{{item.uptime}} min.</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                search: '',
                countryList : [],
                listDetails : [],
            }
        },
        mounted() {
            this.getCountry();
            this.getList();

        },
        computed: {
            filteredList() {
                return this.countryList.filter(country => {
                    return country.title.toLowerCase().includes(this.search.toLowerCase())
                })
            },
            activeList() {
                return this.listDetails
            }
        },
        methods: {
            chooseCountry(event) {
                var questions = event.target.offsetParent.parentElement.children;
                for (const key in questions) {
                    if (questions.hasOwnProperty(key)) {
                        const element = questions[key]
                        element.children[0].className = 'col-sm-12'
                    }
                }
                event.target.className = 'active'
                this.getList();
                if (event.target.children[1].innerText != 'Все страны') {
                    this.listDetails = this.listDetails.filter(column => {return column.country.toLowerCase().includes(event.target.children[1].innerText.toLowerCase())})
                }

            },
            getCountry() {
                var country = {
                    title: 'AB', 
                    quantity: '3372'
                }
                this.countryList.push(country)
                for (var index = 0; index < 18; index++) {
                    var country = {
                        title: 'AE', 
                        quantity: '372'
                    }
                    this.countryList.push(country)
                }
            },
            getList() {
                this.listDetails = [];
                var column = {
                    hash: '26413',
                    ip: '89.105.158.xxx',
                    country: 'AB',
                    city: 'Phitsanulok',
                    speed: '368203',
                    uptime: '1973',
                }
                this.listDetails.push(column)
                for (var index = 0; index < 18; index++) {
                    var column = {
                        hash: '26413',
                        ip: '89.105.158.xxx',
                        country: 'AE',
                        city: 'Phitsanulok',
                        speed: '368203',
                        uptime: '1973',
                    }
                    this.listDetails.push(column)
                }
            }
        }
    }
</script>

<style lang="scss">
    #proxy-list{
        padding: 0 0 30px;
        h2{
            margin: 0 0 30px;
        }
        .proxy-list{
            width: 1000px;
            margin: 0 auto;
            border-top: 5px solid #f0f0f2;
            background: #fff;
            border-radius: 15px;
            .info{
                padding: 20px 61px 25px 31px;
                img{
                    float: left;
                    margin: 3px 25px 0 0 ;
                }
                p{
                    height: 1%;
                    overflow: hidden;
                    font-size: 13px;
                    line-height: 18px;
                    color: #9c9faa;
                    font-weight: 300;
                    margin: 0;
                }
            }
            .table{
                border-top: 1px solid #ebecf2;
                .heading{
                    background: #fafafc;
                    height: 51px;
                    width: 100%;
                    overflow: hidden;
                    padding: 0;
                    border-radius: 0 0 10px 10px;
                    strong{
                        float: left;
                        font-size: 14px;
                        line-height: 51px;
                        color: #787f9f;
                        text-transform: uppercase;
                        margin: 0;
                        font-weight: 500;
                        border-left: 1px solid #fff;
                        padding: 0 25px;
                        text-align: left;
                        
                        &:nth-child(2){
                            width: 93px;
                            border: none;
                        }
                        &:nth-child(3){width: 145px;}
                        &:nth-child(4){width: 127px;}
                        &:nth-child(5){width: 120px;}
                        &:nth-child(6){width: 120px;}
                        &:nth-child(7){width: 108px;}
                    }
                    .filter-search{
                        width: 270px;
                        float: left;

                        .placeinput {
                            width: 200px;
                            float: left;
                            position: relative;
                            overflow: hidden;
                            text-align: left;
                            height: 51px;
                            margin-left: 15px;

                            input{
                                background: none;
                                border: none;
                                padding: 0;
                                font-size: 16px;
                                line-height: 51px;
                                color: #787f9f;
                                font-weight: 500;
                                text-transform: uppercase;
                                height: 51px;
                                width: 100%;
                                display: block;
                                
                                &:invalid + .place_holder {
                                    display: block;
                                }
                                &:focus + .place_holder {
                                    opacity: 0;
                                }
                            }
                            .place_holder {
                                z-index: 2;    
                                left: 10px;
                                cursor: text;   
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;    
                                display: none;
                                color: lightgrey;
                                font-size: 16px;
                                line-height: 51px;
                                color: #787f9f;
                                font-weight: 500;
                                text-transform: uppercase;
                                
                                span {
                                    color: #0080ec;
                                }
                            }
                        }
                        .icon{
                            background:#fff url('../static/images/ico_search.png') no-repeat 50% 50%;
                            width: 29px;
                            height: 29px;
                            float: right;
                            border-radius: 100%;
                            margin-top: 11px;
                        }
                    }
                }
                .list-box{
                    .list-countries{
                        float: left;
                        width: 270px;
                        max-height: 480px;
                        list-style: none;
                        margin: 0;
                        border-right: 1px solid #f7f7f9;
                        overflow: auto;
                        padding: 10px 0;
                        li{
                            padding: 5px 4px;
                            a{
                                display: block;
                                padding: 0 13px;
                                height: 36px;
                                font-size: 13px;
                                line-height: 36px;
                                color: #000;
                                overflow: hidden;
                                border-radius: 5px;
                                // background: #fdfdfc;
                                background: #fdfdfc;
                                position: relative;

                                &::after{
                                    content: '';
                                    position: absolute;
                                    top: 0;
                                    left: 0;
                                    width: 100%;
                                    height: 100%;
                                }

                                &:hover{
                                    background: #eee;
                                }
                                img{
                                    margin: 10px 10px 0 0;
                                    float: left;
                                }
                                .country{
                                    color: #8491c1;
                                    font-weight: 500;
                                    float: left;
                                }
                                .quantity{
                                    color: #9c9faa;
                                    font-weight: 300;
                                    float: right;
                                }
                                &.active{
                                    background: #0258b9;
                                    .country{color: #fff;}
                                    .quantity{color: #76b8c0;}
                                }
                            }
                        }
                    }

                    .list-details{
                        height: 1%;
                        list-style: none;
                        margin: 0;
                        overflow: auto;
                        padding: 0;
                        max-height: 480px;
                        li{
                            width: 100%;
                            overflow: hidden;
                            position: relative;
                            background: #fcfcfd;
                            padding: 15px 0 ;
                            &:nth-child(odd) {
                                background: #fff;
                            }
                            .column{
                                float: left;
                                border-left: 1px solid #fff;
                                padding: 0 0 0 25px;
                                font-size: 14px;
                                line-height: 16px;
                                color: #9c9faa;
                                &:first-child{
                                    width: 93px;
                                    border: none;
                                }
                                &:nth-child(2){width: 145px;}
                                &:nth-child(3){width: 127px;}
                                &:nth-child(4){width: 120px;}
                                &:nth-child(5){width: 120px;}
                                &:nth-child(6){width: 108px;}
                            }
                        }
                    }
                }
            }
        }
    }
</style>