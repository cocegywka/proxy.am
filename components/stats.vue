<template>
    <div id="navigation">
        <div class="center-wrapper clr">
            <nuxt-link to="/" class="logo">
                <span class="logo-shield"></span>
                <img src="../static/images/logo-white.png" alt="Приватный прокси-сервер" width="155" height="43"/>
            </nuxt-link>
            <div class="head-stats">
                <div class="head-stats-block language-box">
                    <span class="head-stats__item">Выбор языка</span>
                    <div class="row-block language">
                        <a href="#" class="language__item active"><img src="../static/images/flagru.png" alt="rus"></a>
                        <a href="/en/changelang" class="language__item"><img src="../static/images/flagusa.png" alt="usa"></a>
                    </div>
                </div>
                <div class="head-stats-block">
                    <div class="row-block">
                        <span class="head-stats__item" id="text_expires">Разных стран</span>
                        <div class="row-block">
                        <div class="img-holder">
                            <img src="../static/images/ico-head-stat4.png" alt="">
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
                            <img src="../static/images/ico-head-stat3.png" alt="">
                        </div>
                        <span class="stat-number" id="online_now"><span class="spincrement" data-from="0" data-to="52741">000 00</span></span>
                        </div>
                    </div>
                </div>
                <div class="head-stats-block">
                    <div class="row-block">
                        <span class="head-stats__item">Онлайн сегодня</span>
                        <div class="row-block">
                        <div class="img-holder">
                            <img src="../static/images/ico-head-stat2.png" alt="">
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
                            <img src="../static/images/ico-head-stat1.png" alt="">
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
        background: #2a3150;
        &.sticky{
            position: fixed;
            top: 0;
        }
        &.inner{
            background: #222d50;
            border: none;
        }
    }

</style>
<script>
export default {
  async mounted() {
    await window.addEventListener('scroll',
      () => document.querySelector('#navigation')
      .classList.toggle('sticky', window.scrollY > 61)
    )
    // this.stats = await this.$axios.$get('https://proxyam.com/json/online/?unicapi=null')
  },
  data: () => ({
    stats: []
  }),
  // data ({ params }) {
  //   return axios.get(`https://proxyam.zone/json/online/?unicapi=null`)
  //     .then((res) => {
  //       return { result: res }
  //     })
  // }
}
</script>
