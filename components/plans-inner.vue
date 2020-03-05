<template>
	<div id="pack-inner" class="inner-background">
		<div class="heading">
			<h2>Описание тарифных планов</h2>
		</div>
		<ul class="breadcrumbs">
			<li><nuxt-link to="/">Главная</nuxt-link></li>
			<li><nuxt-link to="/plans">Описание тарифов</nuxt-link></li>
		</ul>
        <div class="pack-box">
            <div class="pack-info">
                <h3>Описание тарифа Silver Pack</h3>
                <div class="under clearfix">
                    <div class="rating">
                        <span>Рейтинг:</span>
                        <ul>
                            <li class="active"></li>
                            <li class="active"></li>
                            <li class="active"></li>
                            <li class=""></li>
                            <li class=""></li>
                        </ul>
                    </div>
                    <span class="quantity">Количество: <strong>3000</strong> онлайн прокси</span>
                </div>
                <p>Данный тариф предназначен для ознакомления с нашим прокси сервисом. На этом тарифном плане установлено ограничение по количеству 
прокси 3000 шт и ограничение на использования не более 300 потоков. Вы получаете большую базу прокси бесплатно на один час! 
Тариф предоставляется пользователю только один раз, после регистрации.</p>
            </div>
            <div class="calculator clearfix">
                <div class="calc">
                    <h4>Расчет стоимости тарифа SIlVER PACK</h4>
                    <div class="slider-box">
                        <div class="range-slider">
                            <div class="row">
                                <span class="col-sm-2">Аренда</span>
                                <div class="col-sm-8">
                                    <vue-slider ref="slider" v-model="valueRent" v-bind="optionsRent">
                                        <template v-slot:step="{ active, value }"  >
                                            <div  :class="['vue-slider-mark-label', 'custom-label', { active }]">{{ value }}</div>
                                        </template>
                                    </vue-slider>
                                </div>
                                <em class="col-sm-2">{{ valueRent }} Дней</em>
                            </div>
                        </div>
                        <div class="range-slider">
                            <div class="row">
                                <span class="col-sm-2">Потоки</span>
                                <div class="col-sm-8">
                                    <vue-slider ref="slider" v-model="valueStream" v-bind="optionsStream">
                                        <template v-slot:step="{ active, value }"  >
                                            <div  :class="['vue-slider-mark-label', 'custom-label', { active }]">{{ value }}</div>
                                        </template>
                                    </vue-slider>
                                </div>
                                <em class="col-sm-2">{{ valueStream }}</em>
                            </div>
                        </div>
                    </div>
                    <span class="recommend">Рекомендуемое количество потоков: 500</span>
                </div>
                <div class="total">
                    <h4>Итоговая цена</h4>
                    <div class="clearfix">
                        <ul>
                            <li>600 прокси</li>
                            <li>2000 потоки</li>
                            <li>IPV4</li>
                            <li>HTTP | HTTPS | SOCKS</li>
                            <li>безлимитный трафик</li>
                        </ul>
                        <div class="price">
                            <strong>130<span>$</span></strong>
                            <a href="#" class="btn">Купить</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <b-tabs justified>
                <b-tab active>
                    <template v-slot:title>
                        Статистика  <span>ПРОКСИ ОНЛАЙН</span>
                    </template>
                    <div class="content">
                        <img src="../static/images/graph_test_image.jpg" alt="">
                    </div>
                </b-tab>
                <b-tab>
                    <template v-slot:title>
                        СТАТИСТИКА ПО СТРАНАМ <span>ЗА 24 ЧАСА</span>
                    </template>
                    <div class="content">
                        <img src="../static/images/graph_test_image.jpg" alt="">
                    </div>
                </b-tab>
            </b-tabs>
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
        valueRent: 10,
        optionsRent: {
            options,
            // interval: 10,
            min: 1,
            max: 97,
            marks: [1, 5, 10, 30, 60, 90],
        },
        valueStream: 2000,
        optionsStream: {
            options,
            min: 300,
            max: 3200,
            interval: 100,
            marks: [300, 500, 1000, 2000, 3000],
        }
    }),
}
</script>

<style lang="scss">
#pack-inner{
    padding:0 0 20px;
    .pack-box{
        width: 1000px;
        margin: 0 auto 20px;
        .pack-info{
            background: #fff;
            border-radius: 15px 15px 0 0;
            position: relative;
            padding: 22px 21px 30px;
            border-left: 5px solid #489e9e;
            z-index: 2;
            border-bottom: 1px solid #358296;
            h3{
                color: #237c7c;
                font:bold 18px/20px 'Comfortaa';
                margin: 0 0 15px;
                text-transform: uppercase;
            }
            .under{
                border-bottom: 1px solid #f7f7f9;
                padding: 0 0 10px;
                margin: 0 0 10px;
            }
            p{
                color: #797c85;
                font-size: 14px;
                line-height: 18px;
                font-weight: 300;
                margin: 0;
            }
            .rating{
                float: left;
                margin-right: 17px;
                padding-right: 19px;
                border-right: 1px solid #e6e6e8;
                span{
                    float: left;
                    font-size: 14px;
                    margin: 0 9px 0 0;
                    color: #797c85;
                    line-height: 16px;
                    font-weight: 300;
                }
                ul{
                    list-style:none;
                    margin: 0;
                    padding:1px 0 0;
                    float: left;
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
            .quantity{
                float: left;
                font-size: 14px;
                line-height: 16px;
                color: #797c85;
                margin: 0 9px 0 0;
                font-weight: 300;
                strong{
                    font-weight: 300;
                    padding-left: 10px;
                    color: #0258b9;
                }
            }
        }
        .calculator{
            background: #2c3760;
            border-radius: 0 0 15px 15px;
            position: relative;
            .calc{
                float: left;
                width: 690px;
                padding: 23px 0 0;
                overflow: hidden;
                h4{
                    color: #fff;
                    font: bold 18px/20px 'Comfortaa';
                    margin: 0 0 25px 28px;
                    text-transform: uppercase;
                }
                .slider-box{
                    width: 100%;
                    padding:  0 0;
                    .range-slider{
                        padding: 0 20px 15px 0;
                        .row{margin: 0;}
                        .col-sm-8,
                        .col-sm-2{
                            padding: 0;
                        }
                        span{
                            font-size: 13px;
                            line-height: 35px;
                            color: #fff;
                            text-transform: uppercase;
                            font-weight: 500;
                            text-align: center;
                        }
                        em{
                            font-style: normal;
                            font-size: 13px;
                            line-height: 35px;
                            color: #fff;
                            text-transform: uppercase;
                            font-weight: 500;
                            text-align: center;
                            background: #222b4a;
                            border-radius: 5px;
                        }
                        /* component style */
                        .vue-slider-disabled {
                            opacity: 0.5;
                            cursor: not-allowed;
                        }

                        /* rail style */
                        .vue-slider-rail {
                            background-color: #222b4a;
                        }

                        /* process style */
                        .vue-slider-process {
                            background-color: #338fed;
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
                            font-size: 13px;
                            color: #9c9faa;
                            font-weight: 300;
                            margin: 0;
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
                            top: 7px;
                            height: 7px !important;
                            .vue-slider-rail{
                                background: #222b4a;
                            }

                        }
                    }
                    
                }
                .recommend{
                    display: block;
                    padding: 0 0 0 42px;
                    font-size: 14px;
                    line-height: 40px;
                    color: #9198bf;
                    border-top: 1px solid #232c56;
                    background: url('../static/images/ico_arrow_right.png') no-repeat 23px 50%;
                }
            }
            .total{
                height: 100%;
                overflow: hidden;
                background: #222b4a;
                border-radius: 0 0 15px 15px;
                padding: 23px 28px;
                h4{
                    color: #fff;
                    font: bold 18px/20px 'Comfortaa';
                    margin: 0 0 25px;
                    text-transform: uppercase;
                }
                ul{
                    list-style: none;
                    margin: 0;
                    padding: 0;
                    float: left;
                    li{
                        display: block;
                        color: #7c97af;
                        font-size: 12px;
                        line-height: 14px;
                        font-weight: 300;
                        margin: 0 0 10px;
                    }
                }
                .price{
                    float: right;
                    width: 98px;
                    strong{
                        color: #fff;
                        font: bold 48px/50px 'Comfortaa';
                        display: block;
                        margin-bottom: 5px;
                        span{
                            font-size: 25px;
                        }
                    }
                    .btn{
                        width: 100%;
                        height: 45px;
                        font-size: 13px;
                        line-height: 43px;
                        text-align: center;
                        text-decoration: none;
                        color: #fff;
                        border-radius: 20px;
                        background: #0258b9;
                        border: 1px solid #0258b9;
                        display: block;
                        transition: all 0.3s ease;
                        padding: 0;
                        text-transform: none;
                        &:hover{
                            color: #469AFD;
                            background: none;
                        }
                    }
                }
            }
        }
    }
    .container{
        background: #fff;
        border-radius: 15px;
        box-shadow: none;
        position: relative;
        z-index: 2;
        max-width: 1000px;
        overflow: hidden;
    }
    .nav-tabs{
        background: #fff;
        border-radius: 15px 15px 0 0;
        border-bottom: 1px solid #f2f2f5;
        li{
            a{
                padding: 0 !important;
                height: 62px;
                line-height: 62px;
                font-size: 16px;
                color: #9da7cd;
                font-weight: 500;
                text-transform: uppercase;
                background: none !important;
                border: none !important;
                &.active{
                    color: #4494ef;
                    span{
                        color: #393f59;
                    }
                }
            }
        }
    }
    .content{
        margin: 0 !important;
    }
}
</style>