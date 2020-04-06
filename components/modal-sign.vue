<template>
    <div id="modals">
        <!-- Sign In modal -->
        <b-modal id="modal-sign" hide-footer centered no-stacking>
            <template v-slot:modal-title>
            <span>Авторизация</span> на сайте
            </template>
            <form action="#" class="sign-in">
            <fieldset>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">person_outline</i>
                        </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Логин" aria-label="Логин" required>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">lock_outline</i>
                        </span>
                    </div>
                    <input type="password" class="form-control" placeholder="Пароль" aria-label="Пароль" required>
                </div>
                <div class="capcha-box mb-4">
                <img src="../static/images/capcha.png" alt="">
                </div>
                <div class="button">
                <i class="material-icons">exit_to_app_outline</i>
                <input type="submit" value="Войти в аккаунт">
                </div>
                <div class="under">
                <a href="#" v-b-modal.modal-restore>Забыли пароль?</a>
                <a href="#" v-b-modal.modal-reg>Регистрация</a>
                </div>
            </fieldset>
            </form>
        </b-modal>

        <!-- Registration modal -->
        <b-modal id="modal-reg" ref="modal-reg" hide-footer centered no-stacking>
            <template v-slot:modal-title>
            <span>Регистрация</span> Пользователя
            </template>
            <form action="#" class="registration">
            <fieldset>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">person_outline</i>
                        </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Логин" aria-label="Логин" required>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">mail_outline</i>
                        </span>
                    </div>
                    <input type="text" class="form-control" placeholder="E-mail" aria-label="E-mail" required>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">lock_outline</i>
                        </span>
                    </div>
                    <input type="password" class="form-control" placeholder="Пароль" aria-label="Пароль" required>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">refresh_outline</i>
                        </span>
                    </div>
                    <input type="password" class="form-control" placeholder="Повторите пароль" aria-label="Повторите пароль" required>
                </div>
                <b-form-checkbox id="checkbox-1" class="mb-3" v-model="status" name="checkbox-1" value="accepted" unchecked-value="not_accepted">
                Принимаю <a href="#" v-b-modal.modal-roots>данные условия</a> и обязуюсь их выполнять
                </b-form-checkbox>
                
                <div class="capcha-box mb-4">
                <img src="../static/images/capcha.png" alt="">
                </div>

                <b-alert :show="true" variant="danger">
                <i class="material-icons">error</i>
                Неправильно введена капча
                </b-alert>

                <div class="button">
                <i class="material-icons">done_all_outline</i>
                <input type="submit" value="Зарегистрировать">
                </div>
                <div class="under">
                <a href="#" v-b-modal.modal-sign>Вход в кабинет</a>
                <a href="#" v-b-modal.modal-restore>Востановить пароль</a>
                </div>
            </fieldset>
            </form>
        </b-modal>

        <!-- Restore password modal -->
        <b-modal id="modal-restore" hide-footer centered no-stacking>
            <template v-slot:modal-title>
                <span>Восстановление</span> пароля
            </template>
            <form action="#" class="restore-form">
                <fieldset>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" >
                            <i class="material-icons">person_outline</i>
                        </span>
                    </div>
                    <input type="text" class="form-control" placeholder="E-mail" aria-label="E-mail" required>
                </div>
                <div class="button">
                    <i class="material-icons">vpn_key_outline</i>
                    <input type="submit" value="Востановить">
                </div>
                <div class="under">
                    <a href="#" v-b-modal.modal-sign>Вход в кабинет</a>
                    <a href="#" v-b-modal.modal-reg>Регистрация</a>
                </div>
                </fieldset>
            </form>
        </b-modal>

        <!-- Roots modal -->
        <b-modal id="modal-roots" hide-footer centered no-stacking>
            <template v-slot:modal-title>
                <span>Условия</span> сервиса
            </template>
            <ul class="roots">
                <li><i class="material-icons">navigate_next</i>Разрешается использовать прокси только в личных целях</li>
                <li><i class="material-icons">navigate_next</i>запрещается использовать прокси в незаконных целях</li>
                <li><i class="material-icons">navigate_next</i>запрещается брать тестовый пакет более одного раза</li>
                <li><i class="material-icons">navigate_next</i>запрещается перепродавать прокси третьим лицам</li>
                <li><i class="material-icons">navigate_next</i>отправка почты запрещена (25 порт закрыт)</li>
                <li><i class="material-icons">navigate_next</i>в случае простоя, компенсируем время</li>
            </ul>
            <div class="actions">
                <a href="#" class="btn-ok" @click.prevent="accept()">Принять</a>
                <span>и продолжить регистрацию <i class="material-icons">navigate_next</i></span>
            </div>
        </b-modal>
    </div>
</template>

<script>
    export default {
        head: {
            link: [
                { rel: 'stylesheet', href: 'https://fonts.googleapis.com/icon?family=Material+Icons' }
            ]
        },
        data() {
            return {
                status: 'not_accepted',
                capchaCheck: false
            }
        },
        methods: {
          accept() {
            this.status = 'accepted'
            this.$refs['modal-reg'].show()
          }
        }
    }
</script>

<style lang="scss">
  #modal-restore,
  #modal-reg,
  #modal-sign{
    .modal-dialog{
      max-width: 340px !important;
    }
  }
  #modal-roots{
    .modal-dialog{
      max-width: 650px !important;
      .modal-content{
        .modal-header{
          text-align: left;
          padding-left: 26px;
        }
      }
    }
    .roots{
      list-style:none;
      margin: 0;
      padding: 23px;
      position: relative;
      &::after{
        position: absolute;
        top: 26px;
        right: 41px;
        content: '';
        background: url('../static/images/roots_ico.png') no-repeat;
        width: 114px;
        height: 112px;
      }

      li{
        font-size: 14px;
        line-height: 16px;
        margin: 0 0 13px;
        color: #797c85;
        font-weight: 300;
        i{
          font-size: 16px;
          padding-right: 6px;
          color: #0258b9;
          vertical-align: bottom;
        }
      }
    }
    .actions{
      width: 100%;
      overflow: hidden;
      padding: 0 23px 30px;
      .btn-ok{
        float: left;
        width: 127px;
        height: 35px;
        background: #0258b9;
        border: 1px solid #0258b9;
        border-radius: 20px;
        font-size: 14px;
        line-height: 33px;
        color: #fff;
        text-align: center;
        transition: all 0.3s ease-in-out;
        margin-right: 20px;
        text-decoration: none;

        &:hover{
          color: #0258b9;
          background: #fff;
        }
      }
      span{
        font-size: 14px;
        line-height: 35px;
        float: left;
        color: #8491c1;
        i{
          font-size: 14px;
          vertical-align: middle;
        }
      }
    }
  }
  .modal-backdrop{
    opacity: 0.85 !important;
    background: #2a2f50 !important;
  }
  #modal-roots,
  #modal-sign {
    .close{
      line-height: 18px;
    }
  }
  .modal-content{
    border-radius: 15px !important;
    border: none !important;
    border-top: 4px solid #ebecf2 !important;
    background: #fff !important;
    .modal-header{
      display: block;
      border-bottom: 1px solid #f2f2f5;
      padding: 20px 0;
      text-align: center;
      .close{
        position: absolute;
        top: -20px;
        right: -20px;
        width: 20px;
        height: 20px;
        padding: 0;
        margin: 0;
        font-size: 16px;
        font-family: Arial, Helvetica, sans-serif;
        line-height: 16px;
        text-align: center;
        color: #fff;
        text-shadow: none;
        border: 2px solid #fff;
        border-radius: 100%;
        outline: none;
      }
      .close:not(:disabled):not(.disabled):focus,
      .close:not(:disabled):not(.disabled):hover{
        opacity: 1;
      }
      .modal-title{
        font: 500 16px/18px 'Rubik';
        color: #393f59;
        text-transform: uppercase;
        margin: 0;
        span{
          color: #0080ec;
        }
      }
    }
    .modal-body{
      padding: 0;
    }
    .restore-form,
    .registration,
    .sign-in{
      padding: 25px 23px 0;

      .input-group{
          border-bottom: 1px solid #f2f2f5;
          &:focus{
              box-shadow: 0 0 0 .2rem rgba(0,123,255,.25);
          }
      }
      .input-group-prepend{
          position: absolute;
          top: 50%;
          margin-top: -19px;
          left: 0;
          width: 40px;
          height: 35px;
          z-index: 4;
      }
      .form-control,
      .input-group-text{
          background: #fff;
          border: none;
          z-index: 1;
          // border-bottom: 1px solid #f2f2f5;
      }
      .input-group > .form-control:not(:first-child),
      .input-group > .custom-select:not(:first-child){
          border-radius: .25rem;
      }
      .input-group-text{
          width: 40px;
          color: #0080ec;
          overflow: hidden;

          i{
            font-size: 22px;
          }
      }
      .form-control{
          font:300 14px/26px 'Rubik';
          padding: 15px 12px 15px 45px;
          height: auto;
          &:hover,
          &:focus{
              // box-shadow: none;
          }
      }
      .custom-checkbox{
        padding-left: 30px;
        .custom-control-label{
          font: 14px/20px 'Rubik';
          color: #797c85;
          
          &::after,
          &::before{
            top: 50%;
            left: -30px;
            margin-top: -8px;
          }
          a{
            text-decoration: none;
            color: #0258b9;
            border-bottom: 1px dashed #0258b9;
            &:hover{
              border: none;
            }
          }
        }
      }
      .alert{
        color: #d98484;
        width: 100%;
        text-align: left;
        i{
          color: #f07676;
          font-size: 20px;
          vertical-align: bottom;
          margin-right: 5px;
        }
      }
      .button{
        position: relative;
        margin: 0 -23px;
        border-radius: 0 0 13px 13px;
        overflow: hidden;
        input{
          background: #0258b9;
          border: none;
          border-top: 2px solid #0258b9;
          color: #fff;
          height: 52px;
          width: 100%;
          font-size: 14px;
          line-height: 50px;
          padding: 0 0 0 20px;
          transition: all 0.3s ease-in-out;
        }
        i{
          position: absolute;
          top: 50%;
          left: 100px;
          margin: -10px 0 0 0;
          font-size: 19px;
          color: #fff;
          width: 19px;
          overflow: hidden;
          transition: all 0.3s ease-in-out;
        }
        &:hover{
          input{
            background: #fff;
            color: #0258b9;
          }
          i{
            color: #0258b9;
          }
        }
      }
      .under{
        margin: 0 -23px ;
        position: absolute;
        bottom: -30px;
        width: 100%;
        a{
          width: 50%;
          float: left;
          text-align: center;
          font-size: 14px;
          line-height: 16px;
          border-left: 1px solid #7d98af;
          color: #7d98af;
          &:first-child{
            border: none;
          }
        }
      }
    }
  }
  .registration{
    .button{
      i{
        left: 90px !important;
      }
    }
  }
</style>