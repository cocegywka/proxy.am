<template>
    <div id="faq" class="inner-background">
		<div class="container">
			<div class="heading">
				<h2>ОТВЕТЫ НА ЧАСТО ЗАДАВАЕМЫЕ ВОПРОСЫ</h2>
			</div>
			<!-- <ul class="breadcrumbs">
				<li><nuxt-link to="/">Главная</nuxt-link></li>
				<li><nuxt-link to="/plans">Полезная информация</nuxt-link></li>
			</ul> -->
            <div class="faq row">
                <div class="col-sm-4 questions">
                    <span class="title"><span>Навигация</span> по FAQ</span>
                    <ul class="list">
                        <!-- <li><a href="#">Как купить на этом сайте прокси?</a></li> -->
                        <!-- <li><a href="#">Что такое потоки?</a></li>
                        <li><a href="#">В каком браузере работают ваши прокси?</a></li>
                        <li><a href="#">Можно ли купить несколько подписок?</a></li>
                        <li><a href="#">В каких программах можно использовать ваши прокси?</a></li>
                        <li><a href="#">Можно ли использовать прокси для рассылок почты?</a></li> -->
                        <li v-for="item of 13" :key="item"><a href="#" @click.prevent="active($event)" :name="`anchor--${item}`" v-scroll-to="`#anchor--${item}`">В списке прокси попадается один и тот же IP, это нормально?</a></li>
                        <!-- <li><a href="#">Ваши прокси ведут логи?</a></li>
                        <li><a href="#">Какой таймаут лучше использовать?</a></li>
                        <li><a href="#">Как часто происходит обновление списка прокси?</a></li>
                        <li><a href="#">Что такое API и как им пользоваться?</a></li>
                        <li><a href="#">Мой пакет прокси заморожен! Что делать?</a></li>
                        <li><a href="#">Можно ли досрочно разморозить аккаунт?</a></li> -->
                    </ul>
                </div>
                <div class="col-sm-8 answers">
                    <ul>
                        <li v-for="item of 13" :key="item" :id="`anchor--${item}`">
                            <strong>В списке прокси попадается один и тот же IP, это нормально?</strong>
                            <p>Для автоматического продления тарифного плана Вам необходимо поставить соответствующую галочку в разделе "профиль", и данный тарифный план будет автоматически продлен на тот период, на который он был ранее приобретен. Опция работает только при достаточном средств на вашем счету.</p>
                        </li>
                    </ul>
                </div>
            </div>
		</div>
    </div>
</template>

<script>
    export default {
        methods: {
            active(event) {
                var questions = event.target.offsetParent.lastChild.children;
                for (const key in questions) {
                    if (questions.hasOwnProperty(key)) {
                        const element = questions[key]
                        element.children[0].className = ''
                    }
                }
                event.target.className = 'active'
                var answers = event.target.offsetParent.parentElement.lastChild.children[0].childNodes;
                for (const key in answers) {
                    if (answers.hasOwnProperty(key)) {
                        const element = answers[key]
                        element.className = ''
                        if(element.id == event.target.name) {
                            element.className = 'active'
                        }
                    }
                }
            }
        }
    }
</script>

<style lang="scss">
#faq{
    padding: 0 0 20px;
    .faq{
        background: #fff;
        margin: 30px 0 0;
        border-radius: 15px;
        overflow: hidden;
        .questions{
            padding: 0 0 10px;
            border-right: 1px solid #f7f7f9;
            .title{
                display: block;
                background: #f7f7f9;
                border-top: 5px solid #0080ec;
                border-radius: 15px 0 0 0;
                font-size: 16px;
                line-height: 60px;
                color: #393f59;
                height: 65px;
                margin-bottom: 10px;
                text-align: center;
                text-transform: uppercase;
                font-weight: 500;
                span{color: #0080ec;}
            }
            ul{
                list-style: none;
                margin: 0;
                padding: 0;
                li{
                    a{
                        padding: 9px 35px 9px 20px;
                        font-size: 13px;
                        line-height: 17px;
                        text-decoration: none;
                        color: #8491c1;
                        display: block;
                        &:hover{
                            color: #393f59;
                        }
                        &.active{
                            background: url('../static/images/nav_separator.png') no-repeat 20px 100%;
                            padding: 9px 20px 9px 35px;
                            color: #393f59;
                        }
                    }
                }
            }
        }
        .answers{
            border-top: 5px solid #f0f0f2;
            border-radius: 0 15px 0 0;
            padding: 0;
            height: 756px;
            overflow: auto;
            ul{
                list-style: none;
                padding: 0 30px;
                margin: 0;
                li{
                    padding: 18px 40px 18px 0;
                    border-bottom: 1px solid #f4f4f6;
                    position: relative;
                    &:last-child{border: 0;}
                    &::after{
                        content: '';
                        position: absolute;
                        top: 50%;
                        right: 0;
                        margin: -17px 0 0 0;
                        background: url('../static/images/question_ico.png') no-repeat;
                        width: 33px;
                        height: 33px;
                        filter: grayscale(100%);
                        opacity: 0.2;
                    }
                    strong{
                        font-size: 15px;
                        line-height: 18px;
                        color: #787f9f;
                        display: block;
                        text-transform: uppercase;
                        font-weight: 500;
                        margin-bottom: 12px;
                    }
                    p{
                        font-size: 13px;
                        line-height: 19px;
                        color: #9c9faa;
                        margin: 0;
                        font-weight: 300;
                    }
                    &.active{
                        strong{color: #393f59;}
                        &::after{
                            filter: grayscale(0);
                            opacity: 1;
                        }
                    }
                }
            }
        }
        
    }
}
</style>