<template>
    <div id="balance" class="inner-background">
        <div class="heading">
            <h2>Управление балансом</h2>
        </div>
        <div class="container">
            <b-tabs v-model="tabIndex" justified>
                <b-tab active>
                    <template v-slot:title>
                        Пополнение <span>Баланса</span>
                    </template>
                    <div class="content">
                        <div class="bill-box">
                            <div class="price-box">
                                <div class="price-block">
                                    <img src="../static/images/price_img_1.png" alt="" class="price-img">
                                    <div class="price-holder">
                                        <span class="price-title">Введи сумму</span>
                                        <div class="price-input" >
                                            <input type="number" :value="`${value}`">
                                            <!-- <input type="number"> -->
                                            <span class="usd">USD</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="express-block">
                                    <span class="title">Экспрес сумма</span>
                                    <div class="express-price">
                                        <rangeSlider v-on:toggle="togglePrice($event)" />
                                    </div>
                                </div>
                                <div class="currency-block">
                                    <span class="title">Курс валюты</span>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <div class="img-holder">
                                                <img src="../static/images/currency_ico_1.png" alt="">
                                            </div>
                                            <div class="currency">
                                                <strong>68</strong>
                                                <span>RUB</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="img-holder">
                                                <img src="../static/images/currency_ico_2.png" alt="">
                                            </div>
                                            <div class="currency">
                                                <strong>3446</strong>
                                                <span>USD</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <span class="information">Сделайте платеж по указаным ниже реквезитам и  нажмите кнопку “Проверить оплату”</span>
                            <div class="bill-block">
                                <div class="row">
                                    <div class="col-sm-9">
                                        <div class="bill">
                                            <span class="title">СЧЕТ К ОПЛАТЕ</span>
                                            <div class="bill-table">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <span class="row-title">Платежная система:</span>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <span class="webmoney">WebMoney LTD</span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <span class="row-title">Кошелек для оплаты:</span>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <span class="wallet">1HLGgOmlp9ZsL4qUM1-3Ymdnuruhn4hvI</span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <span class="row-title">Итог к оплате:</span>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <span class="price">11.00009 WMZ</span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <span class="row-title">Статус заявки:</span>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <span class="status">Еще не оплачена</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="qr">
                                            <div class="qr-holder">
                                                <img src="../static/images/qr-code.png" alt="">
                                            </div>
                                            <a href="#" class="open-in-wallet">Открыть в кошельке</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="check-payment">
                            <div class="timer">
                                <img src="../static/images/ico_time.png" alt="" class="ico-time">
                                <div class="to">180 Минут.</div>
                                <div class="loader">
                                    <div class="line"></div>
                                    <span>Ожидание оплаты</span>
                                </div>
                            </div>
                            <a href="#" class="check" @click.prevent="checkPayment()">Проверить оплату</a>
                        </div>
                    </div>
                </b-tab>
                <b-tab>
                    <template v-slot:title>
                        История <span>пополнения</span>
                    </template>
                    <div class="content">
                        <div class="history">
                            <div class="headers">
                                <strong>Номер счета</strong>
                                <strong>Платежная система </strong>
                                <strong>Сумма пополнения</strong>
                                <strong>дата пополнения</strong>
                            </div>
                            <div class="row clearfix" v-for="item of 7" :key="item">
                                <div class="number">
                                    <span class="icon blue"></span>
                                    <span>8874070</span>
                                </div>
                                <div class="system">
                                    <span class="webmoney">WebMoney LTD</span>
                                </div>
                                <div class="price">
                                    <span><strong>+5.00 </strong>USD</span>
                                </div>
                                <div class="date">
                                    <span>02 Марта 2019 в 20:48:39</span>
                                </div>
                            </div>
                            <ul class="paging">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li>...</li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">10</a></li>
                            </ul>
                        </div>
                    </div>
                </b-tab>
                <b-tab>
                    <template v-slot:title>
                        Список  <span>последних покупок</span>
                    </template>
                    <div class="content">
                        <div class="success">
                            <span class="thanx"> Спасибо ваши средства поступили на наш счет:</span>
                            <span class="balance-paid">БАЛАНС УСПЕШНО ПОПОЛНЕН!</span>
                            <img src="../static/images/payment_success.gif" class="balance-img" alt="">
                            <span class="info">Обычно операция начисления денежных средст на ваш баланс занимает от <strong>1 -10 минут.</strong></span>
                        </div>
                    </div>
                </b-tab>
            </b-tabs>
        </div>
    </div>
</template>

<script>
    import rangeSlider from './range-slider.vue'
    export default {
        components: {
            rangeSlider
        },
        data() {
            return {
                tabIndex: 0,
                value: 15,
            }
        },
        methods: {
            togglePrice(x){
                console.log(x)
                this.value = x;
            },
            checkPayment() {
                this.tabIndex = 2;
            }
        }
    }
</script>

<style lang="scss">
    #balance{
        padding: 0 0 20px;
        .heading{
            margin-bottom: 25px;
        }
        .container{
            background: #f8f8f9;
            border-radius: 10px;
            box-shadow: none;
            padding: 5px 0 0;
            position: relative;
            z-index: 2;
        }
        .nav-tabs{
            background: #fff;
            border-radius: 10px 10px 0 0;
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
        .bill-box{
            padding: 15px 25px;
            .row{
                margin: 0;
                .col-sm-3,
                .col-sm-9{
                    padding: 0;
                }
            }
            .price-box{
                background: #fff;
                border-radius: 10px;
                padding: 15px 0;
                width: 100%;
                overflow: hidden;
                margin-bottom: 13px;
                border-bottom: 1px solid #ebebed;
                .price-block{
                    float: left;
                    width: 30%;
                    padding: 11px 0 0;
                    .price-img{
                        float: left;
                        margin: 0 22px 0 33px;
                    }
                    .price-holder{
                        height: 1%;
                        overflow: hidden;
                    }
                    .price-title{
                        display: block;
                        color: #9c9faa;
                        font-size: 13px;
                        line-height: 15px;
                        margin: 3px 0 10px;
                    }
                    .price-input{
                        position: relative;
                        width: 90%;
                        overflow: hidden;
                        border-bottom: 1px dashed #232a46;
                        input{
                            background: none;
                            border: none;
                            color: #232a46;
                            font-size: 32px;
                            line-height: 34px;
                            float: left;
                            height: auto;
                            width: 80px;
                            padding: 0;
                        }
                        .usd{
                            color: #232a46;
                            font-size: 32px;
                            line-height: 34px;
                            display: block;
                            height: 1%;
                            overflow: hidden;
                            text-align: right;
                        }
                    }
                }
                .express-block{
                    float: left;
                    width: 45%;
                    padding: 11px 50px 0;
                    .title{
                        display: block;
                        color: #9c9faa;
                        font-size: 13px;
                        line-height: 15px;
                        margin: 0 0 16px;
                    }
                }
                .currency-block{
                    float: right;
                    width: 25%;
                    padding: 11px 0 0;
                    .row{
                        margin: 0;
                        .col-sm-7,
                        .col-sm-5{
                            padding: 0;
                        }
                    }
                    .title{
                        display: block;
                        color: #9c9faa;
                        font-size: 13px;
                        line-height: 15px;
                        margin: 0 0 16px;
                        padding:  0 40px 0 0;
                    }
                    .img-holder{
                        float: left;
                        width: 34px;
                        height: 34px;
                        margin-right: 10px;
                        background: #f2f6f8;
                        border-radius: 100%;
                        text-align: center;
                        line-height: 32px;
                    }
                    strong{
                        display: block;
                        color: #232a46;
                        font-size: 20px;
                        line-height: 22px;
                        font-weight: normal;
                        padding: 1px 0 0;
                    }
                    span{
                        display: block;
                        color: #9c9faa;
                        font-size: 10px;
                        line-height: 12px;
                    }
                }
            }
        }
        .information{
            display: block;
            color: #9c9faa;
            font-size: 13px;
            line-height: 15px;
            margin: 0 0 13px;
            text-align: center;
        }
        .bill-block{
            background: #fff;
            border-radius: 10px;
            padding: 0 0 ;
            .bill{
                padding:30px 25px 0;
                .title{
                    font-size: 16px;
                    line-height: 27px;
                    color: #232a46;
                    display: block;
                    padding-left: 25px;
                    margin-bottom: 27px;
                    background: url('../static/images/icon_thanx.png') no-repeat;
                }
                .bill-table{
                    border-top: 1px dashed #dedede;
                    .row{
                        border-bottom: 1px dashed #dedede;
                        padding: 8px 0;
                        margin: 0;
                        .col-sm-6{
                            padding: 0;
                        }
                        .row-title{
                            color: #9c9faa;
                            font-size: 13px;
                            line-height: 20px;
                            font-weight: 300;
                        }
                        .webmoney{
                            float: right;
                            color: #797c85;
                            font-size: 14px;
                            font-weight: 300;
                            line-height: 27px;
                            padding-left: 30px;
                            display: inline-block;
                            background: url('../static/images/icon_webmoney.png') no-repeat 0 50%;
                        }
                        .wallet{
                            font-size: 14px;
                            line-height: 27px;
                            font-weight: 300;
                            color: #4494ef;
                            text-align: right;
                            display: block;
                        }
                        .price{
                            font-size: 14px;
                            line-height: 27px;
                            font-weight: 500;
                            display: block;
                            text-align: right;
                            color: #41a843;
                        }
                        .status{
                            font-size: 14px;
                            line-height: 27px;
                            display: block;
                            text-align: right;
                            display: block;
                        }
                    }
                }
            }
            .qr{
                padding: 70px 0 30px;
                border-left: 1px solid #f7f7f9;
                .qr-holder{
                    text-align: center;
                    margin: 0 0 20px;
                }
                .open-in-wallet{
                    color: #787f9f;
                    background: #f2f6f8;
                    font-size: 13px;
                    line-height: 28px;
                    height: 28px;
                    border-radius: 20px;
                    text-align: center;
                    width: 150px;
                    display: block;
                    margin: 0 auto;
                    text-decoration: none;
                    transition: all 0.3s ease-in-out;
                    &:hover{
                        background: #4494ef;
                        color: #fff;
                    }
                }
            }
        }
        .success{
            margin: 15px 25px 0;
            text-align: center;
            padding: 45px 0 40px;
            background: #fff;
            border-radius: 10px;
            border-bottom: 1px solid #ececee;
            .thanx{
                font-size: 15px;
                line-height: 19px;
                display: inline-block;
                text-transform: uppercase;
                color: #232a46;
                background: url('../static/images/icon_thanx.png') no-repeat;
                margin-bottom: 15px;
                padding-left: 26px;
            }
            .balance-paid{
                font-size: 35px;
                line-height: 37px;
                color: #232a46;
                display: block;
            }
            .balance-img{
                padding: 100px 0;
            }
            .info{
                font-size: 13px;
                line-height: 21px;
                display: inline-block;
                color: #9c9faa;
                background: url('../static/images/icon_info.png') no-repeat;
                padding-left: 32px;
                strong{
                    color: #0083ec;
                    font-weight: 500;
                }
            }
        }
        .history{
            text-align: center;
            .headers{
                background: #f7f7f9;
                width: 100%;
                overflow: hidden;
                padding: 0;
                border-top: 1px solid #f2f2f5;
                border-bottom: 1px solid #f4f4f7;
                strong{
                    float: left;
                    width: 15%;
                    font-size: 14px;
                    line-height: 50px;
                    text-transform: uppercase;
                    font-weight: 500;
                    color: #787f9f;
                    &:nth-child(2){width: 27.5%;}
                    &:nth-child(3){width: 27.5%;}
                    &:nth-child(4){width: 30%;}
                }
            }
            .row{
                margin: 0;
                border-bottom: 1px solid #f6f6f8;
                background: #ffffff;
                height: 57px;
                font-size: 12px;
                line-height: 57px;    
                &:nth-child(odd){
                    background: #fcfcfc;
                }
                .number{
                    float: left;
                    width: 15%;
                    color: #232a46;
                    vertical-align: middle;
                    span{
                        display: inline-block;
                    }
                    .icon{
                        background: #9c9faa;
                        width: 11px;
                        height: 11px;
                        border-radius: 100%;
                        margin-right: 14px;
                    }
                    .blue{
                        background: #0099ec;
                    }
                }
                .system{
                    float: left;
                    width: 27.5%;
                    color: #b5b8c4;
                    font-size: 14px;
                    font-weight: 300;
                    .webmoney{
                        padding-left: 40px;
                        display: inline-block;
                        background: url('../static/images/icon_webmoney.png') no-repeat 0 50%;
                    }
                }
                .price{
                    float: left;
                    width: 27.5%;
                    color: #9c9faa;
                    strong{
                        font-weight: normal;
                        color: #232a46;

                    }
                }
                .date{
                    float: left;
                    width: 30%;
                    color: #9c9faa;
                }
            }
            .paging{
                background: #fff;
                padding: 10px 0;
                li{
                    border-left: 1px solid #ebecf2;
                    padding: 0;
                    width: 35px;
                    height: 21px;
                    font-size: 14px;
                    line-height: 21px;
                    margin: 0;
                    &:first-child{
                        border: none;
                    }
                    &:hover{
                        background: none;
                        font-weight: normal;
                    }
                    a{
                        color: #787f9f;
                    }
                }
            }
        }
        .check-payment{
            background: #fff;
            padding: 15px 30px;
            border-radius: 0 0 10px 10px;
            border-top: 1px solid #f6f6f8;
            width: 100%;
            overflow: hidden;
            position: relative;
            .timer{
                float: left;
                width: 73%;
                .ico-time{
                    float: left;
                    margin: 11px 14px 0 0 ;
                }
                .to{
                    float: right;
                    margin: 16px 0 0 11px;
                    font-size: 13px;
                    line-height: 15px;
                    color: #9599a7;
                    font-weight: 300;
                }
                .loader{
                    background: #f8f7f9;
                    border-radius: 20px;
                    height: 20px;
                    overflow: hidden;
                    margin-top: 14px;
                    position: relative;
                    .line{
                        background: #0080ec;
                        border-radius: 20px;
                        height: 20px;
                        position: absolute;
                        top: 0;
                        left: 0;
                        z-index: 1;
                        width: 50%;
                    }
                    span{
                        font-size: 13px;
                        line-height: 20px;
                        color: #ccd0de;
                        font-weight: 300;
                        text-align: center;
                        position: relative;
                        z-index: 2;
                        display: block;
                    }
                }
            }
            .check{
                float: right;
                width: 25%;
                height: 43px;
                font-size: 16px;
                line-height: 37px;
                color: #232a46;
                font-weight: 500;
                border: 3px solid #4494ef;
                border-radius: 20px;
                text-align: center;
                text-transform: uppercase;
                text-decoration: none;
                transition: all 0.3s ease-in-out;
                &:hover{
                    color: #fff;
                    background: #4494ef;
                }
            }
        }
    }
    /* Chrome, Safari, Edge, Opera */
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    /* Firefox */
    input[type=number] {
        -moz-appearance:textfield;
    }
</style>