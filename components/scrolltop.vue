<template>
    <a href="#" class="scrollTop" @click.prevent="scrollToTop"></a>
</template>
<style lang="scss">
    .scrollTop{
        position: fixed;
        bottom: 50px;
        right: 50px;
        background-image: url('../static/images/btn-up.png');
        background-size: contain;
        width: 40px;
        height: 40px;
        opacity: 0.78;
        border-radius: 100%;
    }
</style>
<script>
export default {
     methods: { 
        scrollToTop() {
             window.scroll({
                top: 0,
                left: 0,
                behavior: 'smooth'
            })
        }
    }
}
</script>