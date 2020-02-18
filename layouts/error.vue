<template>
  <div class="w1">
    <header class="header">
      <navbar />
      <stats class="inner error-inner"/>
    </header>
    <error />
    <footerBox />
    <scrolltop />
  </div>
</template>

<script>
import navbar from '~/components/navbar.vue'
import stats from '~/components/stats.vue'
import error from '~/components/error.vue'
import footerBox from '~/components/footer-box.vue'
import scrolltop from '~/components/scrolltop.vue'

export default {
  components: {
    navbar,
    stats,
    error,
    footerBox,
    scrolltop
  }
}
</script>