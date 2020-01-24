<template>
    <div class="popular">
        <div class="box">
            <h1>ПОПУЛЯРНЫЕ ТАРИФЫ ДЛЯ ПОКУПКИ ПРОКСИ</h1>
            <p class="description">Наши проверенные и быстрые прокси-сервера лишены этих недостатков, обеспечивая не только абсолютную анонимность своим пользователям, но и быстрое подключение к сети, без привязки к географическому местоположению клиента или часового пояса. </p>
            <ul class="row">
                <li class="col-sm-4" :class="`color--${item}`" v-for="item of 6" v-bind:key="item.id">
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
                                <strong class="price">30<span>$</span></strong>
                                <vue-dropdown
                                    :config="config"
                                    @setSelectedOption="setNewSelectedOption($event);"
                                ></vue-dropdown>
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
</template>
<script>
let vueDropdown
if (process.client) {
    vueDropdown = require('vue-dynamic-dropdown').default
}
export default {
    components: {
        vueDropdown
    },
    data: function() {
        return {
            config: {
                options: [
                    {
                        value: "в месяц"
                    },
                    {
                        value: "в год"
                    },
                ],
                width: "100px",
                placeholder: "в месяц",
                textColor: "#7c97af",
                borderRadius: "10px",
                backgroundColor: "none"
            }
        }
    },
    methods: {
        setNewSelectedOption(selectedOption) {
            console.log(selectedOption);
             this.config.placeholder = selectedOption.value;
        }
    }
}
</script>
<style lang="scss">
    .popular{
        background: #e5e7f3;
        
        .box{
            width: 1000px;
            margin: 0 auto;
            padding: 50px 0;
        }
        h1{
            color: #232945;
            font-size: 28px;
            line-height: 32px;
            margin: 0 0 10px;
            text-align: center;
        }
        p.description{
            color: #767987;
            margin: 0 0 45px;
            font-size: 13px;
            line-height: 20px;
            text-align: center;
        }
        ul.row{
            list-style: none;
            padding:0;
            margin-bottom: 0;
            
            .item{
                background: #2c3760;
                border-radius: 15px;
                margin-bottom: 30px;
                overflow: hidden;
                .heading {
                    height: 60px;
                    padding: 0 25px;
                    box-sizing: border-box;
                    width: 100%;
                    overflow: hidden;
                    border-bottom: 1px solid #232c56;
                    position: relative;
                    &:after{
                        content: '';
                        position: absolute;
                        top: 8px;
                        left: 8px;
                        background: url(images/item_heading_bg.png) no-repeat;
                        width: 55px;
                        height: 33px;
                        z-index: 1;
                    }
                    &:before{
                        content: '';
                        position: absolute;
                        top: 8px;
                        right: 8px;
                        background: url(images/item_heading_bg.png) no-repeat;
                        width: 55px;
                        height: 33px;
                        z-index: 1;
                        transform: scale(-1, 1);
                    }
                    strong{
                        font: 16px/60px 'Comfortaa';
                        color: #fff;
                        text-transform: uppercase;
                        float: left;
                        font-weight: normal;
                        position: relative;
                        z-index: 2;
                    }
                    .ip{
                        float: right;
                        background: url('images/ip_icon.png') no-repeat 0 50%;
                        padding: 0 0 0 20px;
                        color: #7c97af;
                        font-size: 14px;
                        line-height: 60px;
                        position: relative;
                        z-index: 2;
                    }
                }
                .info{
                    width: 100%;
                    margin: 0;
                    position: relative;
                    ul{
                        padding: 15px 0 15px;
                        margin: 0;
                        list-style: none;
                        background: #fff;
                        border-top-right-radius: 15px;
                        li{
                            padding: 0 0 0 21px;
                            font-size: 13px;
                            color: #7c97af;
                            position: relative;
                            &::after{
                                content: '';
                                position: absolute;
                                left: 0;
                                top: 50%;
                                margin-top: -3px;
                                width: 8px;
                                height: 7px;
                                border-radius: 0 5px 5px 0;
                                background: #ececf0; 
                            }
                        }
                    }
                    .price{
                        display: block;
                        text-align: center;
                        color: #298d8d;
                        font: 46px/50px 'Comfortaa';
                        padding: 5px 0 0;
                        span{
                            font-size: 25px;
                        }
                    }
                    .dropdown {
                        position: absolute;
                        border-radius: 12px;
                        bottom: 10px;
                        right: 15px;
                        width: 100px;
                        .dropdown-label-container {
                            border: 1px solid #3e4874 !important;
                            border-radius: 10px;
                            .dropdown-label {
                                .text{
                                    font-size: 13px !important;
                                }
                                .angle-down{
                                    border-color: #0686d9;
                                }
                            }
                        }
                        &.expanded{
                            background: #fff;
                        }
                    }
                }
                .buttons{
                    margin:0;
                    div{padding: 0;}
                    .buy,
                    .more{
                        width: 100%;
                        display: block;
                        background: #fff;
                        font-size: 13px;
                        color: #0080ec;
                        border-radius: 0;
                        height: 46px;
                        line-height: 46px;
                        text-align: center;
                        text-transform: none;
                        border-top: 1px solid #eaeaf0;
                        padding: 0;
                    }
                    .buy{
                        background: #237c7c;
                        border: none;
                        color: #fff;

                    }
                }
            }
        }
        .color--2 {
            .price{
                color: #7e4494 !important;
            }
            .buy{
                background: #7e4494 !important;
            }
        }
        .color--3 {
            .price{
                color: #ab913e !important;
            }
            .buy{
                background: #ab913e !important;
            }
        }
        .color--4 {
            .price{
                color: #444494 !important;
            }
            .buy{
                background: #444494 !important;
            }
        }
        .color--5 {
            .price{
                color: #a74a4a !important;
            }
            .buy{
                background: #a74a4a !important;
            }
        }
        .color--6 {
            .price{
                color: #3eab46 !important;
            }
            .buy{
                background: #3eab46 !important;
            }
        }
    }
</style>
