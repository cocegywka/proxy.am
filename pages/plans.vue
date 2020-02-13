<template>
  <div class="w1">
    <header class="header">
      <navbar />
      <stats class="inner"/>
    </header>
    <plans />
    <paymentsCarousel />
    <footerBox />
    <scrolltop />
  </div>
</template>

<script>
import navbar from '~/components/navbar.vue'
import stats from '~/components/stats.vue'
import paymentsCarousel from '~/components/payments-carousel.vue'
import plans from '~/components/plans.vue'
import footerBox from '~/components/footer-box.vue'
import scrolltop from '~/components/scrolltop.vue'

export default {
  components: {
    navbar,
    stats,
    plans,
    paymentsCarousel,
    footerBox,
    scrolltop
  }
}
</script>

<style>
  .page-enter-active, .page-leave-active {
    transition: opacity 0s
  }
  .page-enter, .page-leave-active {
    opacity: 0
  }
</style>
