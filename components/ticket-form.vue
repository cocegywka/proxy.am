<template>
    <div id="ticket" class="inner-background">
        <div class="heading">
            <h2>Поддержка клиентов</h2>
        </div>
        <div class="ticket">
            <h2><span>РЕШЕНИЕ ТЕХНИЧЕСКИХ</span> и ФИНАНСОВЫХ ВОПРОСОВ</h2>
            <div class="row messengers">
                <div class="col-sm-3 item">
                    <em>
                        <img src="../static/images/ico_icq.png" alt="">
                        <span><span>ICQ:</span> 300-000-5</span>
                    </em>
                </div>
                <div class="col-sm-3 item">
                    <a href="https://telegram.im/@proxyambot" target="_blank" >
                        <img src="../static/images/ico_telegram.png" alt="">
                        <span><span>TELEGRAM:</span> @proxyambot</span>
                    </a>
                </div>
                <div class="col-sm-2 item">
                    <a href="skype:Proxy.am?chat" >
                        <img src="../static/images/ico_skype.png" alt="">
                        <span><span>SKYPE:</span> Proxy.am</span>
                    </a>
                </div>
                <div class="col-sm-4 item">
                    <a href="mailto:Support@proxy.am" >
                        <img src="../static/images/ico_email.png" alt="">
                        <span><span>EMAIL:</span> Support@proxy.am</span>
                    </a>
                </div>
            </div>
            <form action="#" class="ticket-form">
                <fieldset>
                    <h3><span>Создать</span> Новый тикет</h3>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" >
                                        <img src="../static/images/ico_contact_form_4.png" alt="">
                                    </span>
                                </div>
                                <input type="text" class="form-control" placeholder="Тема собщения" aria-label="Тема собщения">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" >
                                        <img src="../static/images/ico_contact_form_5.png" alt="">
                                    </span>
                                </div>
                                <select name="" id="">
                                    <option value="">Категория тикета</option>
                                    <option value="">Финансовые вопросы</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" >
                                        <img src="../static/images/ico_contact_form_3.png" alt="">
                                    </span>
                                </div>
                                <textarea class="form-control" placeholder="Сообщение" name="" id="" ></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="button-holder">
                        <div class="button">
                            <input type="button" value="Создать">
                        </div>
                    </div>
                </fieldset>
            </form>
            <ul class="ticket-list">
                <li v-for="item of 3" >
                    <a href="#" class="item row">
                        <div class="col-sm-2 block" :class="{disable: item == 3}" >
                            <span class="aviability">ОТКРЫТ</span>
                            <span class="aviability">ЗАКРЫТ</span>
                        </div>
                        <div class="col-sm-5 block">
                            <strong>С помощью банковской карты</strong>
                            <span class="category">Финансовые вопросы</span>
                        </div>
                        <div class="col-sm-3 block">
                            <span v-if="item == 3" class="status done">Запрос обработан</span>
                            <span v-else class="status">Админ ждет вашего ответа</span>
                        </div>
                        <div class="col-sm-2 block">
                            <span class="date">02 Марта 2019</span>
                            <span class="date">в 20:48:39</span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style lang="scss" scoped>
    #ticket{
        padding: 0 0 30px;
        .heading{
            h2{
               margin-bottom: 30px; 
            }
        }
        .ticket{
            width: 1000px;
            margin: 0 auto;
            background: #fff;
            border-top: 5px solid #f0f0f2;
            border-radius: 15px;
            overflow: hidden;
            padding: 20px 0 0;

            h2{
                font-family: 'Rubik';
                font-size: 16px;
                line-height: 18px;
                font-weight: 500;
                margin-bottom: 30px;
                text-align: center;
                color: #393f59;
                text-transform: uppercase;
                span{color: #0080ec;}
            }
            .messengers{
                text-align: center;
                margin: 0;
                padding-bottom: 30px;
                .item{
                    padding: 0;
                    em,
                    a{
                        display: inline-block;
                        vertical-align: middle;
                        font-size: 14px;
                        font-style: normal;
                        text-decoration: none;
                        color: #a9b1da;
                        text-transform: uppercase;
                        img{
                            vertical-align: top;
                        }
                        span{
                            display: inline-block;
                            margin: 1px 0 0 7px;
                            line-height: 22px;
                            span{
                                margin: 0;
                                color: #5d6280;
                            }
                        }
                    }
                }
            }
            .ticket-form{
                padding: 24px 33px;
                background: rgb(252,252,252);
                background: -moz-linear-gradient(90deg, rgba(252,252,252,1) 0%, rgba(255,255,255,1) 100%);
                background: -webkit-linear-gradient(90deg, rgba(252,252,252,1) 0%, rgba(255,255,255,1) 100%);
                background: linear-gradient(90deg, rgba(252,252,252,1) 0%, rgba(255,255,255,1) 100%);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#fcfcfc",endColorstr="#ffffff",GradientType=1); 
                border-top: 1px solid #f2f2f5;
                h3{
                    font-family: 'Rubik';
                    font-size: 16px;
                    line-height: 18px;
                    font-weight: 500;
                    margin-bottom: 30px;
                    text-align: center;
                    color: #393f59;
                    text-transform: uppercase;
                    span{color: #0080ec;}
                }
                .input-group{
                    border-bottom: 1px solid #f2f2f5;
                    &:focus{
                        box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);
                    }
                }
                .input-group-prepend{
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 40px;
                    height: 35px;
                    z-index: 2;
                }
                .form-control,
                .input-group-text{
                    background: #fff;
                    border: none;
                    z-index: 1;
                    // border-bottom: 1px solid #f2f2f5;
                }
                .input-group > .form-control:not(:first-child),
                .input-group > .custom-select:not(:first-child){
                    border-radius: .25rem;
                }
                .input-group-text{
                    width: 40px;
                }
                .col-sm-12{
                    .input-group-text{
                        padding-top: 12px;
                        align-items: flex-start;
                    }
                }
                .form-control{
                    font:300 14px/26px 'Rubik';
                    padding: 12px 12px 12px 40px;
                    &:hover,
                    &:focus{
                        // box-shadow: none;
                    }
                }
                textarea.form-control{
                    height: 122px;
                    overflow: auto;
                    line-height: 16px;
                    position: relative;
                    z-index: 1;
                }
                select{
                    border: none;
                    background: #fff;
                    height: 35px;
                    width: 100%;
                    padding: 0 0 0 40px;
                    color: #495057;
                    font:300 14px/35px 'Rubik' !important;
                    -webkit-appearance:none;
                }
                .button-holder{
                    text-align: center;
                    margin-top: -30px;
                    position: relative;
                    z-index: 2;
                    .button{
                        display: inline-block;
                        padding: 10px;
                        border-top: 1px solid #f2f2f5;
                        border-radius: 20px;
                        background: #fff;
                        input{
                            font: 14px/35px 'Rubik';
                            color: #ffffff;
                            width: 127px;
                            height: 35px;
                            padding: 0;
                            margin: 0;
                            display: inline-block;
                            text-align: center;
                            border-radius: 20px;
                            border: 1px solid #0258b9;
                            background: #0258b9;
                            transition: all 0.3s ease;
                            &:hover{
                                background: #fff;
                                color: #0258b9;
                            }
                        }
                    }
                }
            }
            .ticket-list{
                list-style: none;
                margin: 0;
                padding: 0;
                border-radius: 0 0 15px 15px;
                overflow: hidden;
                li{
                    &:last-child{
                        .block{
                            border-radius:  0 0 0 15px;
                        }
                    }
                }
                .item{
                    padding: 15px 0;
                    margin: 0;
                    background: #fff;
                    border-bottom: 1px solid #f7f7f9;
                    text-decoration: none;
                    background: url('../static/images/ico_arrow_right_circle.png') no-repeat 98% 50%;
                    .block{
                        border-left: 1px solid #f2f2f5;
                        padding: 0 20px;
                        &:first-child{
                            max-width: 12%;
                            border-left: 4px solid #579def;
                            margin: -15px 0;
                        }
                        &:nth-child(2){
                            padding: 5px 30px;
                        }
                        &:last-child{
                            padding: 4px 30px;
                        }
                        .aviability{
                            display: block;
                            text-align: center;
                            font-size: 16px;
                            line-height: 72px;
                            color: #72c237;
                            &:first-child{display: block;}
                            &:last-child{display: none;}
                        }
                        strong{
                            font-size: 14px;
                            line-height: 18px;
                            color: #5d6280;
                            display: block;
                            font-weight: 400;
                            text-transform: uppercase;
                            display: block;
                        }
                        .category{
                            font-size: 13px;
                            line-height: 15px;
                            font-weight: 300;
                            background: url('../static/images/ico_contact_form_5.png') no-repeat 0 1px;
                            padding-left: 20px;
                            color: #a9b1da;
                            display: block;
                        }
                        .status{
                            font-size: 14px;
                            line-height: 42px;
                            display: block;
                            padding-left: 25px;
                            background: url('../static/images/ico_bell.png') no-repeat 0 45%;
                            font-weight: 300;
                            color: #797c85;
                            &.done{background: url('../static/images/ico_double_check.png') no-repeat 0 45%;}
                        }
                        .date{
                            display: block;
                            color: #9c9faa;
                            font-size: 12px;
                            line-height: 16px;
                            font-weight: 300;
                        }
                    }
                    .disable{
                        border-left-color: #a9b1da !important;
                        .aviability{
                            color: #a9b1da;
                            &:first-child{display: none;}
                            &:last-child{display: block;}
                        }
                    }
                }
            }
        }
    }
</style>