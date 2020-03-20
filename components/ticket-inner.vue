<template>
    <div id="ticket" class="inner-background">
        <div class="heading">
            <h2>Поддержка клиентов</h2>
        </div>
        <div class="ticket">
            <div class="head">
                <strong><span>Тикет:</span> С помощью банковской карты</strong>
                <span class="aviability">ОТКРЫТ</span>
            </div>
            <div class="log">
                <div class="user ">
                    <div class="img-holder">
                        <img src="../static/images/ico_message_user.png" alt="">
                    </div>
                    <div class="text">
                        <p>Дальше я нажимаю кнопку вернутся на сайт и тут я удивился что мне не сказали спасибо ваша покупка 
активирована . Итог не денег , не спасибо, не покупки.</p>
                    </div>
                    <div class="info">
                        <span class="login">LANCERPRO</span>
                        <span class="date">02 Марта 2019</span>
                        <span class="date">в 20:48:39</span>
                    </div>
                </div>
                <div class="admin ">
                    <div class="img-holder">
                        <img src="../static/images/ico_admin_user.png" alt="">
                    </div>
                    <div class="info">
                        <span class="login">Admin</span>
                        <span class="date">02 Марта 2019</span>
                        <span class="date">в 20:48:39</span>
                    </div>
                    <div class="text">
                        <p>Дальше я нажимаю кнопку вернутся на сайт и тут я удивился что мне не сказали спасибо ваша покупка 
активирована . Итог не денег , не спасибо, не покупки.</p>
                    </div>
                </div>
                <div class="user ">
                    <div class="img-holder">
                        <img src="../static/images/ico_message_user.png" alt="">
                    </div>
                    <div class="text">
                        <p>Дальше я нажимаю кнопку вернутся на сайт и тут я удивился что мне не сказали спасибо ваша покупка 
активирована . Итог не денег , не спасибо, не покупки.</p>
                    </div>
                    <div class="info">
                        <span class="login">LANCERPRO</span>
                        <span class="date">02 Марта 2019</span>
                        <span class="date">в 20:48:39</span>
                    </div>
                </div>
                <form action="#" class="message clearfix">
                    <div class="message-img">
                        <img src="../static/images/ico_message.png" alt="" >
                    </div>
                    <textarea name="" id="" class="form-control" placeholder="Написать сообщение"></textarea>
                    <input type="submit" value="Send" class="button">
                </form>
            </div>
            <div class="bottom">
                <a href="#" class="back">ВЕРНУТЬСЯ НАЗАД</a>
                <a href="#" class="close">ЗАКРЫТЬ ТИКЕТ</a>
            </div>
        </div>
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
</template>

<script>
    export default {
        
    }
</script>

<style lang="scss">
    #ticket{
        padding: 0 0 30px;
        .heading{
            h2{
               margin-bottom: 30px; 
            }
        }
        .ticket{
            width: 1000px;
            margin: 0 auto 30px;
            background: #fff;
            border-top: 5px solid #f0f0f2;
            border-radius: 15px;
            overflow: hidden;
            .head{
                padding: 20px 25px;
                width: 100%;
                overflow: hidden;
                border-bottom: 1px solid #f2f2f5;
                strong {
                    float: left;
                    font-size: 16px;
                    line-height: 18px;
                    text-transform: uppercase;
                    font-weight: 500;
                    color: #393f59;
                    
                    span{
                        color: #0080ec;
                    }
                }
                .aviability{
                    float: right;
                    font-size: 16px;
                    line-height: 18px;
                    color: #72c237;
                }
            }
            .log{
                background: #fbfbfd;
                padding: 25px 25px 20px;
                
                .admin,
                .user{
                    width: 100%;
                    margin: 0 0 20px;
                    overflow: hidden;

                    
                    .img-holder{
                        float: left;
                        background: #fff;
                        border-radius: 100%;
                        width: 33px;
                        height: 33px;
                        margin: 18px 18px 0 0 ;
                        text-align: center;
                        padding: 6px 0 0;
                    }
                    .text{
                        color: #797c85;
                        background: #f3f6fc;
                        font: 300 14px/18px 'Rubik';
                        position: relative;
                        z-index: 1;
                        padding: 15px 25px;
                        float: left;
                        border: none;
                        width: 82%;
                        border-radius: 10px;

                        &::before{
                            content: '';
                            position: absolute;
                            top: 50%;
                            right: -5px;
                            width: 10px;
                            height: 10px;
                            margin-top: -5px;
                            background: #f3f6fc;
                            transform: rotate(45deg);
                        }

                        p{
                            margin: 0;
                        }
                    }
                    .info{
                        float: right;
                        max-width: 130px;
                        margin: 5px 0 0;
                        text-align: right;

                        .login{
                            display: block;
                            color: #5d6280;
                            font-size: 14px;
                            line-height: 16px;
                            margin: 0 0 5px;
                        }
                        .date{
                            color: #9c9faa;
                            display: block;
                            font-size: 12px;
                            line-height: 16px;
                        }
                    }
                }
                .admin{
                    .text{
                        float: right;
                        text-align: left;

                        &::before{
                            right: auto;
                            left: -5px;
                        }
                    }
                    .info{
                        float: left;
                        text-align: left;
                        .login{
                            color: #579def;
                        }
                    }
                }
                .message{
                    width: 100%;

                    .message-img{
                        float: left;
                        margin: 19px 18px 0 0;
                        padding: 6px 0 0;
                        text-align: center;
                        width: 33px;
                    }
                    textarea{
                        background: #fff;
                        color: #797c85;
                        font: 300 14px/16px 'Rubik';
                        height: 56px;
                        overflow: auto;
                        position: relative;
                        z-index: 1;
                        padding: 10px 23px 10px;
                        float: left;
                        border: none;
                        width: 82%;
                    }
                    .button{
                        width: 87px;
                        height: 35px;
                        text-align: center;
                        color: #fff;
                        float: right;
                        border-radius: 20px;
                        padding-left: 20px;
                        margin: 10px 0 0;
                        border: 1px solid #0258b9;
                        transition: all 0.3s ease-in-out;
                        background: #0258b9 url('../static/images/ico_check_white.png') no-repeat 11px 50%;
                        &:hover{
                            background: #fff;
                            color: #0258b9;
                        }
                    }

                }
            }
            .bottom{
                padding: 20px 25px;
                width: 100%;
                overflow: hidden;
                border-top: 1px solid #f2f2f5;
                .close,
                .back{
                    float: left;
                    font-size: 14px;
                    line-height: 18px;
                    padding-left: 24px;
                    text-transform: uppercase;
                    color: #5d6280;
                    text-decoration: none;
                    font-weight: 400;
                    opacity: 1;
                    background: url('../static/images/ico_arrow_left_circle_blue.png') no-repeat 0 50%;
                    &:hover{text-decoration: underline;}
                }
                .close{
                    float: right;
                    background: url('../static/images/ico_lock_blue.png') no-repeat 0 50%;
                }
            }
        }
        .ticket-list{
            width: 1000px;
            margin: 0 auto;
            background: #fff;
            list-style: none;
            padding: 0;
            border-radius: 15px;
            overflow: hidden;
            li{
                &:first-child{
                    .block{
                        border-radius:  15px 15px 0 0 ;
                    }
                }
                &:last-child{
                    .block{
                        border-radius:  0 0 15px 15px;
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
</style>