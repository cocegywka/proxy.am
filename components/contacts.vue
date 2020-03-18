<template>
    <div id="contacts" class="inner-background">
        <div class="heading">
            <h2>Наши контакты</h2>
        </div>
        <div class="contacts">
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
            <form action="#" class="contact-form">
                <fieldset>
                    <h3><span>НАПИСАТЬ</span> СООБЩЕНИЕ</h3>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" >
                                        <img src="../static/images/ico_contact_form_1.png" alt="">
                                    </span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ваше имя" aria-label="Ваше имя">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" >
                                        <img src="../static/images/ico_contact_form_2.png" alt="">
                                    </span>
                                </div>
                                <input type="text" class="form-control" placeholder="E-mail" aria-label="E-mail">
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
                            <input type="button" value="Отправить">
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style lang="scss">
    #contacts{
        padding: 0 0 20px;
        .heading{
            h2{
               margin-bottom: 30px; 
            }
        }
        .contacts{
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
                        span{
                            display: inline-block;
                            margin-left: 7px;
                            line-height: 22px;
                            span{
                                margin: 0;
                                color: #5d6280;
                            }
                        }
                    }
                }
            }
            .contact-form{
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
                    height: 212px;
                    overflow: auto;
                    line-height: 16px;
                    position: relative;
                    z-index: 1;
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
        }
    }
</style>