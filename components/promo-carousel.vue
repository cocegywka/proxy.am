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
        <slide v-for="slide of 3" v-bind:key="slide">
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
            <p>20,000 IP всего за {{slide}}0$ в месяц.</p>
          </div>
          <div class="promo-price row">
            <div class="col-sm-6">
              <span class="shared">SHARED PROXY</span>
              <span class="ip">20 000 IP</span>
            </div>
            <div class="col-sm-6">
              <div class="price">
                <strong>{{slide}}0<sup>$</sup></strong>
                <em>в месяц.</em>
              </div>
            </div>
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
        width: 197px;
        height: 35px;
        font-size: 14px;
        text-align: center;
        line-height: 35px;
        display: block;
        border-radius: 50px;
        padding: 0;
        text-decoration: none;
        background-color: #0258b9;
        color: #fff;
        margin: 0 auto;
        position: relative;
        border: 1px solid #0258b9;
        &:hover{
          transition: all 0.3s ease;
          background-color:#2c3760;
          color: #3175ac;
        }
      }
    }
    .promo-price{
      position: absolute;
      top: 216px;
      right: 40px;
      font-family: 'neogreymedium';
      text-align: left;
      width: 333px;

      .shared{
        display: block;
        color: #a9b1da;
        font-size: 12px;
        padding: 0 0 25px;
      }
      .ip{
        display: block;
        color: #a9b1da;
        font-size: 16px;
        padding: 0 0 0 3px;
      }
      .price{
        width: 92px;
        height: 92px;
        margin-top: -15px;
        float: right;
        border-radius: 100%;
        background: rgb(0,131,236);
        background: -moz-linear-gradient(180deg, rgba(0,131,236,1) 0%, rgba(0,167,235,1) 100%);
        background: -webkit-linear-gradient(180deg, rgba(0,131,236,1) 0%, rgba(0,167,235,1) 100%);
        background: linear-gradient(180deg, rgba(0,131,236,1) 0%, rgba(0,167,235,1) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#0083ec",endColorstr="#00a7eb",GradientType=1);
        text-align: center;
        strong{
          color: #fff;
          display: block;
          font-size: 45px;
          line-height: 45px;
          padding: 17px 0 0 7px;
          sup{
            top: -22px;
            font-size: 15px;
          }
        }
        em{
          color: #b9bfe7;
          text-align: center;
          display: block;
          font: 13px/16px 'Rubik';
        }
      }
    }
    .VueCarousel-slide{position: relative;}
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