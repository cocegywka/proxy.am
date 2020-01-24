<template>
    <div class="promo-list">
        <div class="center-wrapper">
            <h2 class="promo-title">наши прокси подходят для следующих задач<span>
    прокси подходят для следующих задач</span></h2>
            <ul class="row">
                <li class="col-sm-4">
                    <div class="img-holder">
                        <img src="images/ico_promo1.png" alt="">
                    </div>
                    <div class="text-holder">
                        <strong>регистрация аккаунтов</strong>
                        <p>Наша компания предлагает пакеты прокси-серверов любого класса: элитных, приватных, анонимных. </p>
                    </div>
                </li>
                <li class="col-sm-4">
                    <div class="img-holder">
                        <img src="images/ico_promo2.png" alt="">
                    </div>
                    <div class="text-holder">
                        <strong>парсинг поисковых систем</strong>
                        <p>Наша компания предлагает пакеты прокси-серверов любого класса: элитных, приватных, анонимных. </p>
                    </div>
                </li>
                <li class="col-sm-4">
                    <div class="img-holder">
                        <img src="images/ico_promo3.png" alt="">
                    </div>
                    <div class="text-holder">
                        <strong>брут аккаунтов</strong>
                        <p>Наша компания предлагает пакеты прокси-серверов любого класса: элитных, приватных, анонимных. </p>
                    </div>
                </li>
                <li class="col-sm-4">
                    <div class="img-holder">
                        <img src="images/ico_promo4.png" alt="">
                    </div>
                    <div class="text-holder">
                        <strong>регистрация аккаунтов</strong>
                        <p>Наша компания предлагает пакеты прокси-серверов любого класса: элитных, приватных, анонимных. </p>
                    </div>
                </li>
                <li class="col-sm-4">
                    <div class="img-holder">
                        <img src="images/ico_promo5.png" alt="">
                    </div>
                    <div class="text-holder">
                        <strong>обход блокировок</strong>
                        <p>Наша компания предлагает пакеты прокси-серверов любого класса: элитных, приватных, анонимных. </p>
                    </div>
                </li>
                <li class="col-sm-4">
                    <div class="img-holder">
                        <img src="images/ico_promo6.png" alt="">
                    </div>
                    <div class="text-holder">
                        <strong>безопасность в сети</strong>
                        <p>Наша компания предлагает пакеты прокси-серверов любого класса: элитных, приватных, анонимных. </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            list: {

            }
        }
    }
}
</script>
<style lang="scss">
.promo-list{
    .promo-title{
        color: #232945;
        font-size: 20px;
        span{
            font-size: 34px;
            color: #0080ec;
        }
    }
    ul.row{
        list-style: none;
        margin: 0;
        padding: 0;
        li{
            padding: 0 0.5em;
            margin: 0 0 50px;
            text-align: center;
            .img-holder{
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
                margin: 0 0 20px;
                &::after,
                &::before{
                    content:'';
                    position: absolute;
                    top: 50%;
                    left: 10%;
                    margin: -17px 0 0;
                    background: url(~/images/ico_promo.png) no-repeat;
                    width: 66px;
                    height: 35px;
                }
                &::before{
                    transform: scale(-1, 1);
                    left: auto;
                    right: 10%;
                }
            }
            .text-holder{
                strong{
                    color: #787f9f;
                    font-size: 16px;
                    text-transform: uppercase;
                    display: block;
                    margin: 0 0 10px;
                    font-weight: 500;
                }
                p{
                    color: #9c9faa;
                    margin: 0;
                    font-size: 14px;
                    font-weight: 300;
                }
            }
        }
    }
}
</style>