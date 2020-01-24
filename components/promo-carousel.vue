<template>
  <div class="carousel">
    <div v-if="showCarousel">
      <carousel
        ref="mycarousel"
        :per-page="1"
        paginationActiveColor="#262c48"
        paginationColor="#262c48"
        :paginationPadding="5"
        :paginationSize="14"
        >
        <slide v-for="slide of 3" v-bind:key="slide.id">
          <img src="images/banner.png" alt="Приватный прокси-сервер" width="1000" height="384"/>
          <div class="promo-sign">
            <span>Proxy.am</span>
            <strong>ПРИВАТНЫЕ ПРОКСИ-СЕРВЕРЫ</strong>
            <p>Профессиональные решения для обеспечения приватности</p>
            <a href="#" class="button">Зарегистрируйтесь</a>
          </div>
          <div class="promo-text">
            <span>SHARED ПРОКСИ </span>
            <strong>УВЕЛИЧЕНИЕ ОНЛАЙНА</strong>
            <p>20,000 IP всего за 10$ в месяц.</p>
          </div>
        </slide>
      </carousel>
    </div>
  </div>
</template>
<style lang="scss">
  .carousel{
    width: 1000px;
    margin: -1px auto 0;
    .promo-text{
      width: 380px !important;
      left: auto !important;
      right: 8px;
      top: 80px;
      strong{margin-bottom: 10px !important;}
    }
    .promo-text,
    .promo-sign{
      color: #fff;
      width: 230px;
      position: absolute;
      top: 82px;
      left: 8px;
      span{
        display: block;
        color: #0080ec;
        font:  16px/30px 'Comfortaa';
        text-transform: uppercase;
      }
      strong{
        display: block;
        color: #fff;
        font:  22px/30px 'Comfortaa';
        text-transform: uppercase;
        margin: 0 0 25px;
      }
      p {
        font-size: 14px;
        line-height: 20px;
        color: #a9b1da;
        margin: 0 0 40px;
      }
      .button{
        display: inline-block;
        width: 177px;
        height: 40px;
        font-size: 13px;
        text-align: center;
        line-height: 37px;
        display: block;
        border-radius: 50px;
        padding: 0;
        text-decoration: none;
        background: #185c93;
        color: #fff;
        margin: 0 0 0;
        position: relative;
        border: 3px solid #185c93;
        &:hover{
          transition: all 0.3s ease;
          background: #0080ec;
        }
      }
    }
    .VueCarousel-dot-container{
      position: absolute;
      bottom: 40px;
      right: 316px;
      margin: 0;
    }
    .VueCarousel-dot{
      outline: none !important;
      &.VueCarousel-dot--active{
        position: relative;
      }
      &.VueCarousel-dot--active:after{
        content: '';
        width: 6px;
        height: 6px;
        position: absolute;
        top: 9px;
        left: 9px;
        background: #00b2ce;
        border-radius: 50%;
      }
    }
    
  }
</style>
<script>
    export default {
        data() {
            return {
              showCarousel : false
            }
        },
        mounted() {
          this.showCarousel = true;
        }
    }
</script> 