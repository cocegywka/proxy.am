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
          <a href="#login" class="title colorbox-link">Войти</a>
      </div>
      <span class="ip">
          <a href="#register" class="colorbox-link cboxElement">Регистрация</a>
      </span>
    </div>
  </div>
</template>