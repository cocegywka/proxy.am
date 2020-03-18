<template>
  <div class="w1">
    <header class="header">
      <navbar />
      <stats class="inner"/>
    </header>
    <ticketForm />
    <paymentsCarousel />
    <footerBox />
    <scrolltop />
  </div>
</template>

<script>
import navbar from '~/components/navbar.vue'
import stats from '~/components/stats.vue'
import paymentsCarousel from '~/components/payments-carousel.vue'
import ticketForm from '~/components/ticket-form.vue'
import footerBox from '~/components/footer-box.vue'
import scrolltop from '~/components/scrolltop.vue'

export default {
  components: {
    navbar,
    stats,
    ticketForm,
    paymentsCarousel,
    footerBox,
    scrolltop
  }
}
</script>
