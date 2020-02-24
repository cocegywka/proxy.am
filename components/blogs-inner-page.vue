<template>
    <div id="blogs" class="inner-background">
		<div class="container">
			<div class="heading">
				<h2>Полезная информация</h2>
			</div>
			<!-- <ul class="breadcrumbs">
				<li><nuxt-link to="/">Главная</nuxt-link></li>
				<li><nuxt-link to="/plans">Полезная информация</nuxt-link></li>
			</ul> -->
			<div class="blogs-page">
                <h1>
                    <img src="/images/blogs_ico_1.png" alt="">
                    БЕЗОПАСНОСТЬ В СЕТИ – КАК ЗАЩИТИТЬ СВОЙ КОМПЬЮТЕР ОТ ВЗЛОМА
                </h1>
                <div class="content">
                    <div class="img-holder">
                        <img :src="`/images/blogs_1.png`" alt="">
                    </div>
                    <p>Если вы полагаете, что опасаться хакеров стоит только тем, кто хранит у себя на жестком диске корпоративную или любую другую важную информацию, вынуждены вас разочаровать. Безопасность в сети – насущная проблема и для рядовых пользователей, особенно, если серфинг в интернете является одним из любимых занятий, а взлом компьютера не входит в ваши планы. Троян можно подцепить в самом неожиданном месте – скачивая видео или музыку, по электронной почте и в социальных сетях, запуская видеоигру или даже устанавливая вполне безобидное ПО. Защитить свой компьютер от взлома можно самыми разными способами – от привычного антивируса и файервола до установки прокис-сервера и Тора. Еще лучше комбинировать различные сервисы и программы.</p>
                    <strong>БЕЗОПАСНОСТЬ В СЕТИ – КАК ЗАЩИТИТЬ СВОЙ КОМПЬЮТЕР ОТ ВЗЛОМА</strong>
                    <p>В нашей статье мы рассмотрим основные источники опасности в интернете, а также предложим список решений для защиты компьютера от вирусного заражения и несанкционированного доступа. Профильные специалисты и продвинутые пользователи, скорее всего, не узнают ничего нового.</p>
                    <strong>БЕЗОПАСНОСТЬ В СЕТИ – КАК ЗАЩИТИТЬ СВОЙ КОМПЬЮТЕР ОТ ВЗЛОМА</strong>
                    <ul class="list">
                        <li>¤ Безопасность в сети – как защитить свой компьютер от взлома	</li>	
                        <li>¤ Зачем нужна анонимность в Сети и как ее организовать</li>
                        <li>¤ Настройка прокси-серверов в браузерах</li>
                        <li>¤ Что такое прокси-сервер?</li>
                        <li>¤ Настройка прокси-сервера на Windows и Linux</li>
                        <li>¤ 5 бесплатных прокси серверов</li>
                    </ul>
                </div>
                <div class="recommend">
                    <h2><span>Рекомендуем</span> тарифные планы</h2>
                    <div class="table">
                        <div class="heading">
                            <strong>Пакеты прокси</strong>
                            <strong>Онлайн</strong>
                            <strong>Параметры</strong>
                            <strong>Графики</strong>
                            <strong>Цена</strong>
                        </div>
                        <div class="plans-details">
                            <div v-for="item of 4" class="plans-item clearfix" :class="`color--${item}`">
                                <div class="title">
                                    <strong>Silver Pack</strong>
                                    <ul class="rating">
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li></li>
                                        <li></li>
                                    </ul>
                                </div>
                                <div class="online">
                                    <span>1000</span>
                                </div>
                                <div class="params">
                                    <div class="range-slider">
                                        <div class="row">
                                            <span class="col-sm-3">Аренда</span>
                                            <div class="col-sm-5">
                                                <vue-slider
                                                    ref="slider"
                                                    v-model="valueRent"
                                                    v-bind="optionsRent"
                                                ></vue-slider>
                                            </div>
                                            <em class="col-sm-4">{{ valueRent }} Дней</em>
                                        </div>
                                    </div>
                                    <div class="range-slider">
                                        <div class="row">
                                            <span class="col-sm-3">Потоки</span>
                                            <div class="col-sm-5">
                                                <vue-slider
                                                    ref="slider"
                                                    v-model="valueStream"
                                                    v-bind="optionsStream"
                                                ></vue-slider>
                                            </div>
                                            <em class="col-sm-4">{{ valueStream }}</em>
                                        </div>
                                    </div>
                                </div>
                                <div class="graphs">
                                    <ul class="graph-list">
                                        <li><a href="#" @click.prevent=""><span class="ico"></span></a></li>
                                        <li><a href="#" @click.prevent=""><span class="ico"></span></a></li>
                                        <li><a href="#" @click.prevent=""><span class="ico"></span></a></li>
                                    </ul>
                                </div>
                                <div class="price">
                                    <em>{{item}}8$</em>
                                </div>
                                <div class="button">
                                    <a href="#" class="btn">Купить</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</div>
        <div class="popular">
            <div class="box">
                <h2>ПОПУЛЯРНЫЕ ТАРИФЫ</h2>
                <ul class="row">
                    <li class="col-sm-4" :class="`color--${item}`" v-for="item of 3" v-bind:key="item.id">
                        <div class="item">
                            <div class="heading">
                                <strong>Silver Pack</strong>
                                <span class="ip">Ipv4</span>
                            </div>
                            <div class="info row clearfix">
                                <ul class="col-sm-7">
                                    <li>600 прокси</li>
                                    <li>до 2000 потоков</li>
                                    <li>HTTP | HTTPS | SOCKS</li>
                                    <li>безлимитный трафик</li>
                                </ul>
                                <div class="col-sm-5">
                                    <strong class="price">{{item}}0<span>$</span></strong>
                                    <dropdown :options="arrayOfObjects_2" 
                                        :selected="object_2" 
                                        v-on:updateOption="methodToRunOnSelect" 
                                        :closeOnOutsideClick="true">
                                    </dropdown>
                                </div>
                            </div>
                            <div class="buttons row">
                                <div class="col-sm-7">
                                    <a href="#" class="btn more">Подробнее</a>
                                </div>
                                <div class="col-sm-5">
                                    <a href="#" class="btn buy">Купить</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
	</div>
</template>
<script>
var options =  {
    dotSize: 14,
    width: 'auto',
    height: 8,
    contained: false,
    direction: 'ltr',
    data: null,
    min: 1,
    max: 100,
    interval: 10,
    disabled: false,
    clickable: true,
    duration: 0.5,
    adsorb: false,
    lazy: false,
    tooltip: 'active',
    tooltipPlacement: 'top',
    tooltipFormatter: void 0,
    useKeyboard: false,
    keydownHook: null,
    dragOnClick: false,
    enableCross: true,
    fixed: false,
    minRange: void 0,
    maxRange: void 0,
    order: true,
    marks: false,
    dotOptions: void 0,
    process: true,
    dotStyle: void 0,
    railStyle: void 0,
    processStyle: void 0,
    tooltipStyle: void 0,
    stepStyle: void 0,
    stepActiveStyle: void 0,
    labelStyle: void 0,
    labelActiveStyle: void 0,
}
export default {
    data: () => ({
        arrayOfObjects_2: [
            {
                name: 'в месяц'
            },
            {
                name: 'в год'
            },
        ],
        object_2: {
            name: 'в месяц',
        },
        valueRent: 30,
        optionsRent: {
            options,
            interval: 10,
        },
        valueStream: 3000,
        optionsStream: {
            options,
            min: 1000,
            max: 10000,
            interval: 1000,
        }
    }),
    methods: {
        back() {
            this.$router.back();
        },
        methodToRunOnSelect(payload) {
            this.object = payload;
        },
    }
}
</script>
<style lang="scss">
    .blogs-page{
        background: #fff;
        border-radius: 10px;
        padding: 25px 30px;
        margin: 0 0 20px;
        overflow: hidden;
        h1{
            font:bold 21px/24px 'Comfortaa';
            color: #232945;
            margin: 0 0 35px;
            img{
                float: left;
                margin: -2px 20px 0 0;
            }
        }
        .img-holder{
            float: left;
            margin: 0 20px 10px 0;
        }
        p{
            font-size: 13px;
            line-height: 21px;
            color: #9c9faa;
            margin: 0 0 20px;
        }
        strong{
            display: block;
            font-size: 14px;
            line-height: 16px;
            color: #787f9f;
            margin: 0 0 20px;
        }
        .list{
            margin: 0 0 20px;
            padding: 0;
            list-style: none;
            overflow: hidden;
            font-size: 13px;
            li{
                float: left;
                width: 50%;
                box-sizing: border-box;
                padding: 0 10px 0 0;
                color: #9c9faa;
                margin: 0 0 10px;
            }
        }
        .back{
            width: 158px;
            height: 35px;
            font-size: 13px;
            line-height: 33px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            border-radius: 20px;
            background: #0258b9;
            border: 1px solid #0258b9;
            display: block;
            transition: all 0.3s ease;
            &:hover{
                color: #469AFD;
                background: none;
            }
        }
        .recommend{
            margin: 30px -30px -41px;
            overflow: hidden;
            h2{
                font-size: 16px;
                line-height: 18px;
                color: #393f59;
                text-align: center;
                text-transform: uppercase;
                span{
                    color: #0080ec;
                }
            }
            .table{
                border-top: 5px solid #ebecf2;
                .heading{
                    background: #fafafc;
                    height: 51px;
                    width: 100%;
                    overflow: hidden;
                    padding: 0;
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
                    }
                    strong:first-child{
                        border: none;
                        width: 200px;
                    }
                    strong:nth-child(3){width: 300px;}
                    strong:nth-child(4){width: 150px;}
                    strong:nth-child(5){width: 120px;}
                }
                .plans-details{
                    .plans-item{
                        width: 100%;
                        // overflow: hidden;
                        height: 79px;
                        box-sizing: content-box;
                        border-left: 4px solid #489e9e;
                        border-bottom: 1px solid #f8f8fb;
                        &:last-child{
                            border-bottom: none;
                        }
                        .title{
                            width: 200px;
                            padding: 23px 25px 0;
                            float: left;
                            strong{
                                margin: 0 0 5px;
                                font: 18px/20px 'Comfortaa';
                                color: #237c7c;
                                display: block;
                                text-transform: uppercase;
                            }
                            .rating{
                                list-style:none;
                                margin: 0;
                                padding: 0;
                                width: 100%;
                                overflow: hidden;
                                li{
                                    background: url('../static/images/rating_star.png') no-repeat;
                                    width: 13px;
                                    height: 12px;
                                    float:left;
                                    margin: 1px 0 0;
                                    &.active{
                                        background-position:0 -12px;
                                    }
                                }
                            }
                        }
                        .online{
                            width: 112px;
                            float: left;
                            span{
                                font-size: 14px;
                                line-height: 79px;
                                text-align: center;
                                color: #2b375d;
                                display: block;
                            }
                        }
                        .params{
                            width: 300px;
                            float: left;
                            padding: 18px 0 0;
                            .range-slider{
                                span{
                                    font-size: 12px;
                                    line-height: 22px;
                                    color: #797c85;
                                }
                                em{
                                    font-style: normal;
                                    font-size: 13px;
                                    line-height: 22px;
                                    color: #2b375d;
                                }
                                /* component style */
                                .vue-slider-disabled {
                                    opacity: 0.5;
                                    cursor: not-allowed;
                                }

                                /* rail style */
                                .vue-slider-rail {
                                    background-color: #ccc;
                                    border-radius: 15px;
                                }

                                /* process style */
                                .vue-slider-process {
                                    background-color: #3498db;
                                    border-radius: 15px;
                                }

                                /* mark style */
                                .vue-slider-mark {
                                    z-index: 4;
                                }
                                .vue-slider-mark:first-child .vue-slider-mark-step, .vue-slider-mark:last-child .vue-slider-mark-step {
                                    display: none;
                                }
                                .vue-slider-mark-step {
                                    width: 100%;
                                    height: 100%;
                                    border-radius: 50%;
                                    background-color: rgba(0, 0, 0, 0.16);
                                }
                                .vue-slider-mark-label {
                                    font-size: 14px;
                                    white-space: nowrap;
                                }
                                /* dot style */
                                .vue-slider-dot-handle {
                                    cursor: pointer;
                                    width: 100%;
                                    height: 100%;
                                    border-radius: 50%;
                                    background-color: #0080ec;
                                    box-sizing: border-box;
                                    box-shadow: 0.5px 0.5px 2px 1px rgba(0, 0, 0, 0.32);
                                }
                                .vue-slider-dot-handle-focus {
                                    box-shadow: 0px 0px 1px 2px rgba(52, 152, 219, 0.36);
                                }

                                .vue-slider-dot-handle-disabled {
                                    cursor: not-allowed;
                                    background-color: #ccc;
                                }

                                .vue-slider-dot-tooltip-inner {
                                    font-size: 14px;
                                    white-space: nowrap;
                                    padding: 2px 5px;
                                    min-width: 20px;
                                    text-align: center;
                                    color: #fff;
                                    border-radius: 5px;
                                    border-color: #3498db;
                                    background-color: #3498db;
                                    box-sizing: content-box;
                                    span{
                                        color: #fff;
                                    }
                                }
                                .vue-slider-dot-tooltip-inner::after {
                                    content: "";
                                    position: absolute;
                                }
                                .vue-slider-dot-tooltip-inner-top::after {
                                    top: 100%;
                                    left: 50%;
                                    transform: translate(-50%, 0);
                                    height: 0;
                                    width: 0;
                                    border-color: transparent;
                                    border-style: solid;
                                    border-width: 5px;
                                    border-top-color: inherit;
                                }
                                .vue-slider-dot-tooltip-inner-bottom::after {
                                    bottom: 100%;
                                    left: 50%;
                                    transform: translate(-50%, 0);
                                    height: 0;
                                    width: 0;
                                    border-color: transparent;
                                    border-style: solid;
                                    border-width: 5px;
                                    border-bottom-color: inherit;
                                }
                                .vue-slider-dot-tooltip-inner-left::after {
                                    left: 100%;
                                    top: 50%;
                                    transform: translate(0, -50%);
                                    height: 0;
                                    width: 0;
                                    border-color: transparent;
                                    border-style: solid;
                                    border-width: 5px;
                                    border-left-color: inherit;
                                }
                                .vue-slider-dot-tooltip-inner-right::after {
                                    right: 100%;
                                    top: 50%;
                                    transform: translate(0, -50%);
                                    height: 0;
                                    width: 0;
                                    border-color: transparent;
                                    border-style: solid;
                                    border-width: 5px;
                                    border-right-color: inherit;
                                }

                                .vue-slider-dot-tooltip-wrapper {
                                    opacity: 0;
                                    transition: all 0.3s;
                                }
                                .vue-slider-dot-tooltip-wrapper-show {
                                    opacity: 1;
                                }

                                .vue-slider{
                                    height: 8px !important;
                                    .vue-slider-rail{
                                        background: #f7f7f9;
                                    }

                                }
                            }
                            .col-sm-5{
                                padding: 0;
                            }
                        }
                        .graphs{
                            width: 150px;
                            float: left;
                            padding: 20px 0 0;
                            .graph-list{
                                list-style: none;
                                margin: 0;
                                padding: 0 10px;
                                overflow: hidden;
                                li{
                                    float: left;
                                    width: 33.33%;
                                    a{
                                        display: block;
                                        text-align: center;
                                        background: #f7f7f9;
                                        padding: 5px 0;
                                        &.active,
                                        &:focus,
                                        &:hover{
                                            background: #237c7c;
                                            .ico{background-position: 0 -19px !important;}
                                        }
                                        .ico{
                                            width: 22px;
                                            height: 19px;
                                            display: inline-block;
                                            vertical-align: middle;
                                        }
                                        
                                    }
                                    &:first-child{
                                        a{
                                            border-radius:3px 0 0 3px;
                                            .ico{
                                                background: url('../static/images/graph_icon1.png') no-repeat;
                                            }
                                        }
                                    }
                                    &:nth-child(2){
                                        a{
                                            .ico{
                                                background: url('../static/images/graph_icon2.png') no-repeat;
                                            }
                                        }
                                    }
                                    &:last-child{
                                        a{
                                            border-radius: 0 3px 3px 0;
                                            .ico{
                                                background: url('../static/images/graph_icon3.png') no-repeat;
                                            }
                                        }
                                    }
                                }
                            }

                        }
                        .price{
                            width: 120px;
                            float: left;
                            em{
                                display: block;
                                text-align: center;
                                color: #489e9e;
                                font-style: normal;
                                font: bold 36px/79px 'Comfortaa';
                            }
                        }
                        .button{
                            width: 100px;
                            float: left;
                            padding: 20px 0 0;
                            .btn{
                                color: #fff;
                                background: #237c7c;
                                padding: 0 24px;
                                font-size: 14px;
                                line-height: 33px;
                                font-weight: 500;
                                text-transform: none;
                                height: 33px;
                                text-align: center;
                                border-radius: 20px;
                                border: 1px solid #237c7c;
                                &:hover{
                                    background: #fff;
                                    color: #237c7c;
                                }
                            }
                        }
                    }
                    .color--2 {
                        border-left-color: #444494;
                        .title strong,
                        .price em{
                            color: #444494 !important;
                        }
                        .btn{
                            background: #444494 !important;
                            border-color: #444494 !important;
                            &:hover{
                                color: #444494 !important;
                                background: #fff !important;
                            }
                        }
                    }
                    .color--3 {
                        border-left-color: #444494;
                        .title strong,
                        .price em{
                            color: #7e4494 !important;
                        }
                        .btn{
                            background: #7e4494 !important;
                            border-color: #7e4494 !important;
                            &:hover{
                                color: #7e4494 !important;
                                background: #fff !important;
                            }
                        }
                    }
                    .color--4 {
                        border-left-color: #ab913e;
                        .title strong,
                        .price em{
                            color: #ab913e !important;
                        }
                        .btn{
                            background: #ab913e !important;
                            border-color: #ab913e !important;
                            &:hover{
                                color: #ab913e !important;
                                background: #fff !important;
                            }
                        }
                    }
                }
            }
        }
    }
    #blogs{
        padding: 0 0 30px;
        .popular{
            background: none;
            h2{
                font-size: 16px;
                line-height: 18px;
                color: #232a46;
                text-align: center;
                text-transform: uppercase;
                font-weight: 500;
                margin: 0 0 15px;
            }
            .box{
                padding: 0;
                .row{
                    margin: 0;
                    .col-sm-4{
                        padding: 0;
                        .item{
                            padding: 0;
                            border-radius: 0;
                            .ip,
                            .price{
                                color: #fff !important;
                            }
                            .more,
                            .buy{
                                border-radius: 0;
                                &:focus{
                                    box-shadow: none;
                                }
                            }
                        }
                        &:first-child .item{
                            border-radius: 10px 0 0 10px;
                            .more{
                                border-radius: 0 0 0 7px;
                            }
                        }
                        &:last-child .item{
                            border-radius:  0 10px 10px 0;
                            .buy{
                                border-radius: 0 0 7px 0;
                            }
                        }
                    }
                    .color--1 .item{
                        background: #444494;
                        .heading{
                            border-color: #363680;
                        }
                        .dropdown-toggle{
                            background: #3e4187 !important;
                            border-color: #3e4187 !important;
                        }
                        .buy{
                            background: #3a3a7e !important;
                            border-color: #3a3a7e !important;
                            &:hover{
                                background: #fff !important;
                                color: #3a3a7e !important;
                            }
                        }
                    }
                    .color--2 .item{
                        background: #237c7c;
                        .heading{
                            border-color: #1c636d;
                        }
                        .dropdown-toggle{
                            background: #256a75 !important;
                            border-color: #256a75 !important;
                        }
                        .buy{
                            background: #1e6a6a !important;
                            border-color: #1e6a6a !important;
                            &:hover{
                                background: #fff !important;
                                color: #1e6a6a !important;
                            }
                        }
                    }
                    .color--3 .item{
                        background: #94447e;
                        .heading{
                            border-color: #76366f;
                        }
                        .dropdown-toggle{
                            background: #794176 !important;
                            border-color: #794176 !important;
                        }
                        .buy{
                            background: #7e3a6b !important;
                            border-color: #7e3a6b !important;
                            &:hover{
                                background: #fff !important;
                                color: #7e3a6b !important;
                            }
                        }
                    }
                    
                }
            }
        }
    }
</style>