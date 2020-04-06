<template >
  <div class="menu-top">
    <div itemscope itemtype="http://www.schema.org/SiteNavigationElement" class="center-wrapper">
      <ul class="top-menu">
          <li itemprop="name"><nuxt-link exact to="/faq">FAQ</nuxt-link></li>
          <li itemprop="name"><nuxt-link exact to="/plans">Цены</nuxt-link></li>
          <li itemprop="name"><nuxt-link exact to="/proxy-list">Список прокси</nuxt-link></li>
          <li itemprop="name"><nuxt-link exact to="/blogs">Статьи</nuxt-link></li>
          <li itemprop="name"><nuxt-link exact to="/news">Новости</nuxt-link></li>
          <li itemprop="name"><nuxt-link exact to="/contacts">Контакты</nuxt-link></li>
      </ul>
      <div class="profile">
        <a href="" @click.prevent class="title colorbox-link" v-b-modal.modal-sign>Войти</a>
        <modalSign />
      </div>
      <span class="ip">
        <a href="" @click.prevent class="colorbox-link cboxElement" v-b-modal.modal-reg>Регистрация</a>
      </span>
    </div>
  </div>
</template>
<script>
  import modalSign from './modal-sign.vue';
  export default {
    components: {
      modalSign,
    },
  }
</script>
