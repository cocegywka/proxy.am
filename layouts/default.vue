<template>
  <div class="wrapper">
    <nuxt />
  </div>
</template>

<style lang="scss">
.inner-background{
  background: #f8f8fb url('../static/images/bg_inner.png') repeat-x;
  /* min-height: 800px; */
  position: relative;
  &:before,
  &:after{
      content:'';
      position: absolute;
      left: 50%;
      top: 0;
      background: url('../static/images/bg_inner_decor.png') no-repeat;
      width: 177px;
      height: 608px;
      margin-left: -660px;
  }
  &:before{
      left: auto;
      right: 50%;
      transform: scale(-1,1);
      margin-left: 0;
      margin-right: -660px;
  }
  .container{
    background: none;
    box-shadow: none;
    padding: 0;
  }
}
.heading{
  padding: 20px 0 0;
  text-align: center;
  h2{
    font-size: 30px;
    line-height: 32px;
    position: relative;
    text-transform: uppercase;
    color: #fff;
    display: inline-block;
    margin: 0;
    &:after{
      content:'';
      position: absolute;
      top: 50%;
      margin: -3px 0 0;
      left: -140px;
      width: 110px;
      height: 5px;
      background: url('../static/images/bg_heading.png') 0 0 no-repeat;
    }
    &:before{
      content:'';
      position: absolute;
      top: 50%;
      margin: -3px 0 0;
      right: -140px;
      width: 110px;
      height: 5px;
      transform: scale(-1, 1);
      background: url('../static/images/bg_heading.png') 0 0 no-repeat;
    }
  }
}
.breadcrumbs{
  list-style-type: none;
  margin: 0 0 15px;
  padding: 0;
  text-align: center;
  li{
    display: inline-block;
    padding: 0 10px 0 16px;
    background: url('../static/images/icon_separator.png') 0 8px no-repeat;
    &:first-child{
      padding-left: 20px;
      background: url('../static/images/icon_home.png') 0 6px no-repeat;
    }
    a{
      color: #757b9c;
      font-size: 14px;
      line-height: 16px;
    }
  }
}
</style>
