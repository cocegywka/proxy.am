<template>
    <div class="payment-box">
    <plansSubtitle />
        <div class="center-wrapper">
            <carousel
                ref="mycarousel"
                :per-page="7"
                :paginationEnabled="false"
                :navigationEnabled="true"
                :navigationNextLabel="'>'"
                :navigationPrevLabel="'<'"
                >
                <slide class="payment__item">
                    <img src="../static/images/pay12.png" alt="webmoney">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay13.png" alt="yandex">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay14.png" alt="qiwi">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay15.png" alt="bitcoin">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay16.png" alt="payeer">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay17.png" alt="visa">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay18.png" alt="mastercard">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay8.png" alt="perfect money">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay9.png" alt="alfa click">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay10.png" alt="liqpay">
                </slide>
                <slide class="payment__item">
                    <img src="../static/images/pay11.png" alt="wallet one">
                </slide>
            </carousel>
        </div>
    </div>
</template>
<style lang="scss">
.VueCarousel-inner{
    align-items: center;
    .VueCarousel-navigation-button{
        color: #999;
        margin-top: -4px;
    }
    .VueCarousel-slide{
        text-align: center;
    }
}
.VueCarousel-navigation-next,
.VueCarousel-navigation-prev{
    text-indent: -9999px;
    background: url('../static/images/ico_arrow.png') no-repeat;
    width: 12px;
    height: 18px;
    visibility: hidden;
}
.VueCarousel-navigation-next{
    transform: scale(-1, 1) translateY(-50%)  !important;
}
</style>
<script>
    import plansSubtitle from './plansSubtitle.vue'
    export default {
        components: {
            plansSubtitle
        },
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