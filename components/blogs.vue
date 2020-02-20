<template>
	<div id="blogs" class="inner-background">
		<div class="container">
			<div class="heading">
				<h2>Полезная информация</h2>
			</div>
			<!-- <ul class="breadcrumbs">
				<li><nuxt-link to="/">Главная</nuxt-link></li>
				<li><nuxt-link to="/plans">Полезная информация</nuxt-link></li>
			</ul> -->
			<div class="blogs-list">
				<div class="item row" v-for="item of 3">
					<div class="img-holder col-sm-4">
						<img :src="`images/blogs_${item}.png`" alt="">
					</div>
					<div class="wrap col-sm-8">
						<strong>БЕЗОПАСНОСТЬ В СЕТИ – КАК ЗАЩИТИТЬ СВОЙ КОМПЬЮТЕР ОТ ВЗЛОМА</strong>
						<p>Если вы полагаете, что опасаться хакеров стоит только тем, кто хранит у себя на жестком диске корпоративную или любую другую важную информацию, вынуждены вас разочаровать. Безопасность в сети – насущная проблема и для рядовых пользователей, особенно, если серфинг в интернете является одним из любимых занятий, а взлом компьютера не входит в ваши планы. Троян можно подцепить в самом неожиданном месте – скачивая видео или музыку, по электронной почте и в социальных сетях, запуская видеоигру или даже устанавливая вполне безобидное </p>
						<a href="#" class="more" @click.prevent="openBlog(item)">Читать далее</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>
<script>
export default {
	methods: {
		openBlog(item) {
			this.$router.push('/blogs/' + item)
		}
	}
}
</script>
<style lang="scss">
	#blogs{
        padding: 0 0 30px;
		h2{
			margin: 0 0 30px;
		}
		.container{
			background: none;
			border: none;
			box-shadow: none;
			padding: 0;
			margin: 0 auto;
		}
		.item{
			background: #fff;
			border-radius: 10px;
			margin: 0 0 11px;
			padding: 30px 0;
			&:last-child{margin: 0;}
			.img-holder{
				display: flex;
				align-items: center;
				justify-content: center;
			}
			.wrap{
				padding: 0 20px 0 0;
				strong{
					color: #787f9f;
					font-size: 14px;
					line-height: 16px;
					display: block;
					font-weight: 600;
					margin: 0 0 10px;
				}
				p {
					font-size: 13px;
					line-height: 20px;
					color: #9c9faa;
					margin: 0 0 10px;
				}
				.more{
					width: 134px;
					height: 35px;
					font-size: 13px;
					line-height: 33px;
					text-align: center;
					text-decoration: none;
					color: #fff;
					border-radius: 20px;
					background: #0258b9;
					border: 1px solid #0258b9;
					display: block;
					transition: all 0.3s ease;
					&:hover{
						color: #469AFD;
						background: none;
					}
				}
			}
		}
	}
	@media (min-width: 1200px) {
		.container, .container-lg, .container-md, .container-sm, .container-xl {
			max-width: 1000px;
		}
	}

</style>
