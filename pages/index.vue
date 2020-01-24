<template>
  <div class="w1">
    <header class="header">
      <navbar />
      <stats />
    </header>
    <promoCarousel />
    <popular />
    <promoList />
    <paymentsCarousel />
    <footerBox />
  </div>
</template>

<script>
import navbar from '~/components/navbar.vue'
import stats from '~/components/stats.vue'
import promoCarousel from '~/components/promo-carousel.vue'
import popular from '~/components/popular.vue'
import promoList from '~/components/promo-list.vue'
import paymentsCarousel from '~/components/payments-carousel.vue'
import footerBox from '~/components/footer-box.vue'

export default {
  components: {
    navbar,
    stats,
    promoCarousel,
    popular,
    promoList,
    paymentsCarousel,
    footerBox
  }
}
</script>

<style>

</style>
