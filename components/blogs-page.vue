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
                        <img :src="`/images/blogs_${this.$route.params.id}.png`" alt="">
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
                    <a href="#" class="back" @click.prevent="back()">Назад к статьям</a>
                </div>
			</div>
            <div class="leave-comment">
                <h2><span>Оставить </span>Комментарий</h2>
                <img src="/images/comment.jpg" alt="" style="margin-left: -15px">
            </div>
		</div>
	</div>
</template>
<script>
export default {
    methods: {
        back() {
            this.$router.back();
        }
    }
}
</script>
<style lang="scss">
    .blogs-page{
        background: #fff;
        border-radius: 10px;
        padding: 25px 30px;
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
            line-height: 35px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            border-radius: 20px;
            background: #0258b9;
            display: block;
        }
    }
    .leave-comment{
        background: #fff;
        border-radius: 10px;
        padding: 25px 30px;
        margin: 10px 0 0;
        h2{
            font-size: 16px;
            line-height: 18px;
            color: #393f59;
            text-transform: uppercase;
            span{
                color: #0080ec;
            }
        }
    }
</style>