<template>
    <div id="news" class="inner-background">
		<div class="container">
			<div class="heading">
				<h2>Новости и обьявления</h2>
			</div>
			<!-- <ul class="breadcrumbs">
				<li><nuxt-link to="/">Главная</nuxt-link></li>
				<li><nuxt-link to="/plans">Полезная информация</nuxt-link></li>
			</ul> -->
            <div class="news">
                <ul class="news-list row">
                    <li class="col-sm-6 clearfix" v-for="item of 8" :key="item">
                        <div class="date-box">
                            <strong>1{{item}}</strong>
                            <span>03.18</span>
                        </div>
                        <div class="holder">
                            <p>Новая опция: "автоматическое продление тарифного плана". Для этого Вам необходимо поставить соответствующую галочку в разделе "профиль" или при покупке, и данный тарифный план будет автоматически продлен на тот период, на который он был приобретен. Опция работает только при достаточном средств на Вашем счету.</p>
                        </div>
                    </li>
                </ul>
                <ul class="paging">
                    <li><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li>...</li><li><a href="#">5</a></li><li><a href="#">10</a></li>
                </ul>
            </div>
		</div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style lang="scss" >
#news{
    padding-bottom: 30px;
    .heading{
        margin-bottom: 30px;
    }
    .container{
        max-width: 1000px;
    }
    .news{
        border-radius: 15px;
        overflow: hidden;
        background: #fff;
        .news-list{
            margin: 0;
            padding: 0;
            list-style: none;
            li{
                position: relative;
                background: #fbfafd;
                vertical-align: top;
                border-bottom: 1px solid #e8f2f4;
                padding: 25px 30px;
                &:nth-child(odd){
                    border-right: 1px dotted #e8f2f4;
                }
                &::after{
                    content: '';
                    width: 65px;
                    height: 100%;
                    background: #fff;
                    position: absolute;
                    top: 0;
                    left: 0;
                    z-index: 1;
                }
                .date-box{
                    float: left;
                    background: url('../static/images/bg_date.png') no-repeat;
                    width: 75px;
                    height: 76px;
                    text-align: center;
                    padding: 14px 0 0;
                    margin-right: 30px;
                    position: relative;
                    z-index: 2;
                    strong{
                        color: #008aec;
                        font: bold 33px/35px 'Comfortaa';
                        display: block;
                        margin: 0 0 2px;
                    }
                    span{
                        color: #9c9faa;
                        display: block;
                        font-size: 13px;
                        line-height: 15px;
                        font-weight: 300;
                    }
                }
                .holder{
                    height: 100%;
                    overflow: hidden;
                    width: auto;
                    p{
                        font-size: 14px;
                        line-height: 18px;
                        color: #9c9faa;
                        margin: 0;
                    }
                }
            }
        }
    }
}
.paging{
    background: #fff;
    padding: 10px 0;
    margin: 0;
    text-align: center;
    li{
        display: inline-block;
        border: 0;
        border-left: 1px solid #ebecf2;
        border-radius: 0;
        padding: 0;
        width: 35px;
        height: 21px;
        font-size: 14px;
        line-height: 21px;
        margin: 0;
        padding: 0;
        &:first-child{
            border: none;
        }
        &.active,
        &:hover{
            background: none;
            font-weight: normal;
            a{
                color: #4295ef;
            }
        }
        a{
            text-decoration: none;
            color: #787f9f;
        }
    }
}
</style>