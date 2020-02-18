<template>
    <div class="error-page">
        <h1>ИЗВИНИТЕ! сТРАНИЦА НЕ НАЙДЕНА</h1>
        <h2>Администрация уже медитирует над этим вопросом!</h2>
        <div class="error-img">
            <img src="../static/images/error404.png" alt="">
            <span class="spinner"></span>
        </div>
    </div>
</template>
<style lang="scss">
    #navigation.error-inner{
        background: #2c3760;
    }
    .error-page{
        width: 1000px;
        margin: 0 auto;
        background: none !important;
        box-shadow: none !important;
        text-align: center;
        padding: 60px 0 0;
        h1{
            color: #fff;
            font: 22px/24px 'Comfortaa';
            margin: 0 0 10px;
            text-transform: uppercase;
        }
        h2{
            color: #7c98b0;
            font-size: 14px;
            line-height: 16px;
            font-family: 'Rubik';
            font-weight: normal;
            margin: 0;
        }
        .error-img{
            position: relative;
            img{
                max-width: 100%;
            }
            .spinner{
                position: absolute;
                top: 350px;
                left: 464px;
                background-image: url('../static/images/spinner_2.png');
                -webkit-animation:spin 4s linear infinite;
                -moz-animation:spin 4s linear infinite;
                animation:spin 4s linear infinite;
                width: 70px;
                height: 71px;
                background-size: 100%;
            }
            // @media  (min-width: 992px) and (max-width: 1200px){
            //     .spinner{
            //         left: 429px;
            //     }
            // }
            // @media  (min-width: 768px) and (max-width: 992px){
            //     .spinner{
            //         top: 255px;
            //         left: 309px;
            //     }
            // }
            // @media  (min-width: 576px) and (max-width: 768px){
            //     .spinner{
            //         top: 194px;
            //         left: 234px;
            //         width: 40px;
            //         height: 40px;
            //     }
            // }
            @media  (max-width: 1000px) {
                .spinner{
                    display: none;
                }
            }
            
            @-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
            @-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
            @keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }
        }
    }

</style>