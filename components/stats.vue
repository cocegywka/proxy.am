<template>
    <div id="navigation">
        <div class="center-wrapper clr">
            <a href="/ru/" class="logo">
                <span class="logo-shield"></span>
                <img src="images/logo-white.png" alt="Приватный прокси-сервер" width="155" height="43"/>
            </a>
            <div class="head-stats">
                <div class="head-stats-block language-box">
                    <span class="head-stats__item">Выбор языка</span>
                    <div class="row-block language">
                        <a href="#" class="language__item active"><img src="images/flagru.png" alt="rus"></a>
                        <a href="/en/changelang" class="language__item"><img src="images/flagusa.png" alt="usa"></a>
                    </div>
                </div>
                <div class="head-stats-block">
                    <div class="row-block">
                        <span class="head-stats__item" id="text_expires">Разных стран</span>
                        <div class="row-block">
                        <div class="img-holder">
                            <img src="images/ico-head-stat4.png" alt="">
                        </div>
                        <span class="stat-number" id="country_count"><span class="spincrement" data-from="0" data-to="221">214</span></span>   
                        </div>
                    </div>
                </div>
                <div class="head-stats-block">
                    <div class="row-block">
                        <span class="head-stats__item" id="text_threads">Онлайн сейчас</span>
                        <div class="row-block">
                        <div class="img-holder">
                            <img src="images/ico-head-stat3.png" alt="">
                        </div>
                        <span class="stat-number" id="online_now"><span class="spincrement" data-from="0" data-to="52741">21 964</span></span>                            
                        </div>
                    </div>
                </div>
                <div class="head-stats-block">
                    <div class="row-block">
                        <span class="head-stats__item">Онлайн сегодня</span>
                        <div class="row-block">
                        <div class="img-holder">
                            <img src="images/ico-head-stat2.png" alt="">
                        </div>
                        <span class="stat-number" id="online_today"><span class="spincrement" data-from="0" data-to="174406">95 035</span></span>                            
                        </div>
                    </div>
                </div>
                <div class="head-stats-block">
                    <div class="row-block">
                        <span class="head-stats__item">Всего прокси</span>
                        <div class="row-block">
                        <div class="img-holder">
                            <img src="images/ico-head-stat1.png" alt="">
                        </div>
                        <span class="stat-number" id="proxy_count"><span class="spincrement" data-from="0" data-to="276301">152 874</span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style lang="scss">
    .dropdown .dropdown-label-container .dropdown-label .text{
        color: #7c97af;
    }
    #navigation{
        position: absolute;
        top: 61px;
        left: 0;
        width:100%;
        padding: 18px 0 20px;
        border-bottom: 1px solid #242b48;
        background: #2c3760;
        &.sticky{
            position: fixed;
            top: 0;
        }
    }

</style>
<script>
export default {
  mounted() {
      window.addEventListener('scroll',
        () => document.querySelector('#navigation')
        .classList.toggle('sticky', window.scrollY > 61)
        )
  }
}
</script>