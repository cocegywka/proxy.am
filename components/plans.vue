<template>
	<div id="plans" class="inner-background">
		<div class="heading">
			<h2>Описание тарифных планов</h2>
		</div>
		<ul class="breadcrumbs">
			<li><nuxt-link to="/">Главная</nuxt-link></li>
			<li><nuxt-link to="/plans">Описание тарифов</nuxt-link></li>
		</ul>
		<div class="plans-holder">
			<ul class="row">
	            <li class="col-sm-12" :class="`color--${item}`" v-for="item of 6" v-bind:key="item.id">
	                <div class="item">
                        <div class="clearfix">
                		<div class="base-holder">
                			<div class="heading">
		                        <strong>Описание тарифа Silver Pack</strong>
		                        <span class="ip">Ipv4</span>
		                    </div>
		                    <div class="description">
		                    	<div class="row">
		                    		<div class="col-sm-9">
				                    	<p>Данный тариф предназначен для ознакомления с нашим прокси сервисом. На этом тарифном плане установлено ограничение по количеству прокси 3000 шт и ограничение на использования не более 300 потоков. Вы получаете большую базу прокси бесплатно на один час! 
		Тариф предоставляется пользователю только один раз, после регистрации.</p>
		                    		</div>
		                    		<div class="col-sm-3">
				                        <ul class="features">
				                            <li>600 прокси</li>
				                            <li>до 2000 потоков</li>
				                            <li>HTTP | HTTPS | SOCKS</li>
				                            <li>безлимитный трафик</li>
				                        </ul>
		                    		</div>
		                    	</div>
                                <div class="row">
                                    <div class="col-sm-9 rating">
                                        <span>Рейтинг:</span>
                                        <ul>
                                            <li class="active"></li>
                                            <li class="active"></li>
                                            <li class="active"></li>
                                            <li class=""></li>
                                            <li class=""></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-3 buttons">
                                        <a class="btn more">Подробнее</a>
                                    </div>
                                </div>
		                    </div>
                		</div>
                		<div class="info-holder">
		                    <div class="info clearfix">
	                            <strong class="price">{{item}}0<span>$</span></strong>
	                            <vue-dropdown
	                                :config="config2"
	                                @setSelectedOption="setNewSelectedOption($event);"
	                            ></vue-dropdown>
	                            <vue-dropdown
	                                :config="config"
	                                @setSelectedOption="setNewSelectedOption($event);"
	                            ></vue-dropdown>
	                            <div class="buttons">
		                            <a href="#" class="btn buy">Купить</a>
			                    </div>
	                    	</div>
                		</div>
                        </div>
	                </div>
	            </li>
	        </ul>
		</div>
	</div>
</template>
<script>
let vueDropdown;
if (process.client) {
    vueDropdown = require('vue-dynamic-dropdown').default
}
export default {
    components: {
        vueDropdown
    },
    data: function() {
        return {
            config: {
                options: [
                    {
                        value: "в месяц"
                    },
                    {
                        value: "в год"
                    },
                ],
                width: "100px",
                placeholder: "в месяц",
                textColor: "#7c97af",
                borderRadius: "10px",
                backgroundColor: "none"
            },
            config2: {
                options: [
                    {
                        value: "Пт 500"
                    },
                    {
                        value: "Пт 500"
                    },
                ],
                width: "100px",
                placeholder: "Пт 500",
                textColor: "#7c97af",
                borderRadius: "10px",
                backgroundColor: "none"
            }
        }
    },
    methods: {
        setNewSelectedOption(selectedOption) {
            this.config.placeholder = selectedOption.value;
        }
    }
}
</script>
<style lang="scss">
	.inner-background{
		background: #f8f8fb url('../static/images/bg_inner.png') repeat-x;
		min-height: 800px;
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
	.plans-holder{
		width: 1000px;
		margin:0 auto;

		ul.row{
            list-style: none;
            padding:0;
            margin-bottom: 0;
            
            .item{
                position: relative;
                background: #2c3760;
                border-radius: 15px;
                margin-bottom: 30px;
                &:before,
                &:after{
                    content:'';
                    position: absolute;
                    left: 14px;
                    top: 8px;
                    background: url('../static/images/bg_plans_item.png') no-repeat;
                    width: 55px;
                    height: 33px;
                    z-index: 0;
                }
                &:before{
                    left: auto;
                    right: 14px;
                    transform: scale(-1,1);
                }
                .info-holder{
					float: right;
					width: 13%;
                    position: relative;
                    min-height: 223px;
                    height: 100%;
				}
				.base-holder{
					float: left;
					width: 87%;
				}
                .heading {
                    height: 60px;
                    padding: 0 25px;
                    box-sizing: border-box;
                    width: 100%;
                    overflow: hidden;
                    position: relative;
                    &:after{
                        content: '';
                        position: absolute;
                        top: 8px;
                        left: 8px;
                        background: url('/static/images/item_heading_bg.png') no-repeat;
                        width: 55px;
                        height: 33px;
                        z-index: 1;
                    }
                    &:before{
                        content: '';
                        position: absolute;
                        top: 8px;
                        right: 8px;
                        background: url('/static/images/item_heading_bg.png') no-repeat;
                        width: 55px;
                        height: 33px;
                        z-index: 1;
                        transform: scale(-1, 1);
                    }
                    strong{
                        font: 16px/60px 'Comfortaa';
                        color: #fff;
                        text-transform: uppercase;
                        float: left;
                        font-weight: normal;
                        position: relative;
                        z-index: 2;
                    }
                    .ip{
                        float: right;
                        background: url('/static/images/ip_icon.png') no-repeat 0 50%;
                        padding: 0 0 0 20px;
                        color: #7c97af;
                        font-size: 14px;
                        line-height: 60px;
                        position: relative;
                        z-index: 2;
                    }
                }
                .info{
                    width: 100%;
                    margin: 0;
                    border-left: 1px solid #272f4b;
                }
                .description{
                	background: #fff;
                	border-radius: 0 15px 0 0;
                    overflow:hidden;
                    box-shadow: 8px -3px 0px #2a3358;
                	p{
                		font-size: 14px;
                		line-height: 20px;
                		color: #797c85;
                		padding: 15px 0 0 15px;
                	}
                    .features{
                        padding: 15px 0 15px;
                        margin: 0;
                        list-style: none;
                        background: #f8f8fb;
                        width:100%;
                        height: 100%;
                        border-top-right-radius: 15px;
                        li{
                            padding: 1px 0 1px 21px;
                            font-size: 13px;
                            color: #7c97af;
                            position: relative;
                            &::after{
                                content: '';
                                position: absolute;
                                left: 0;
                                top: 50%;
                                margin-top: -3px;
                                width: 8px;
                                height: 7px;
                                border-radius: 0 5px 5px 0;
                                background: #ececf0; 
                            }
                        }
                    }
                    .buttons{
                        border-top: 1px solid #eaeaf0;
                    }
                }
                .price{
                    display: block;
                    text-align: center;
                    color: #298d8d;
                    font: 46px/50px 'Comfortaa';
                    padding: 25px 0 2px;
                    span{
                        font-size: 25px;
                    }
                }
                .dropdown {
                    border-radius: 12px;
                    width: 100px;
                    margin: 0 auto 8px;
                    position: relative;
                    z-index: 1;
                    .dropdown-label-container {
                        border: 1px solid #3e4874 !important;
                        border-radius: 10px;
                        transition: all 0.3s ease-in-out;
                        &:hover{
                            background: #fff;
                        }
                        .dropdown-label {
                            .text{
                                font-size: 13px !important;
                            }
                            .angle-down{
                                border-color: #0686d9;
                            }
                        }
                    }
                    .options{
                        position: absolute;
                        top: 100%;
                        left: 0;
                        width: 100%;
                        background: #fff;
                        border-radius:10px;
                    }
                    &.expanded{
                        background: #fff;
                        z-index: 2;
                    }
                }

                .buttons{
                    margin:0;
                    div{padding: 0;}
                    .buy,
                    .more{
                        width: 100%;
                        display: block;
                        background: #fff;
                        font-size: 13px;
                        color: #0080ec;
                        border-radius: 0;
                        height: 46px;
                        line-height: 46px;
                        text-align: center;
                        text-transform: none;
                        padding: 0;
                        transition:all 0.3s ease-in-out;
                    }
                    .more{
                        background:#f8f8fb;
                        &:hover{
                            color: #232c56;
                            background: #eaeaf0;
                        }
                    }
                    .buy{
                        background: #237c7c;
                        border:1px solid #237c7c;
                        color: #fff;
                        position: absolute;
                        bottom: 0;
                        left: 0;
                        border-radius: 0 0 15px 0;
                        &:hover{
                            background: #fff;
                            color: #237c7c;
                            border-color: #237c7c;
                        }
                        &:focus{
                            box-shadow: 0 0 3px #237c7c;
                        }

                    }
                }
                .rating{
                    border-top: 1px solid #eaeaf0;
                    span{
                        float: left;
                        font-size: 14px;
                        margin: 0 5px 0 15px;
                        color: #797c85;
                        line-height: 46px;
                    }
                    ul{
                        list-style:none;
                        margin: 0;
                        padding:15px 0 0;
                        float: left;
                        li{
                            background: url('../static/images/rating_star.png') no-repeat;
                            width: 13px;
                            height: 12px;
                            float:left;
                            margin: 1px 0 0;
                            &.active{
                                background-position:0 -12px;
                            }
                        }
                    }

                }
            }
        }
        .color--2 {
            .price{
                color: #7e4494 !important;
            }
            .buy{
                background: #7e4494 !important;
                border-color: #7e4494 !important;
                &:hover{
                    color: #7e4494 !important;
                    background: #fff !important;
                }
                &:focus{
                    box-shadow: 0 0 3px #7e4494;
                }
            }
        }
        .color--3 {
            .price{
                color: #ab913e !important;
            }
            .buy{
                background: #ab913e !important;
                border-color:#ab913e !important;
                &:hover{
                    color: #ab913e !important;
                    background: #fff !important;
                }
                &:focus{
                    box-shadow: 0 0 3px #ab913e;
                }
            }
        }
        .color--4 {
            .price{
                color: #444494 !important;
            }
            .buy{
                background: #444494 !important;
                border-color:#444494 !important;
                &:hover{
                    color: #444494 !important;
                    background: #fff !important;
                }
                &:focus{
                    box-shadow: 0 0 3px #444494;
                }
            }
        }
        .color--5 {
            .price{
                color: #a74a4a !important;
            }
            .buy{
                background: #a74a4a !important;
                border-color:#a74a4a !important;
                &:hover{
                    color: #a74a4a !important;
                    background: #fff !important;
                }
                &:focus{
                    box-shadow: 0 0 3px #a74a4a;
                }
            }
        }
        .color--6 {
            .price{
                color: #3eab46 !important;
            }
            .buy{
                background: #3eab46 !important;
                border-color:#3eab46 !important;
                &:hover{
                    color: #3eab46 !important;
                    background: #fff !important;
                }
                &:focus{
                    box-shadow: 0 0 3px #3eab46;
                }
            }
        }
	}

</style>