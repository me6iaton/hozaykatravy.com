$ ->

	$.fn.tagcloud.defaults =
		size:
			start: 14
			end: 18
			unit: "pt"
		color:
			start: "#acdcca"
			end: "#4bb480"

	$ ->
		$("#tagsCold a").tagcloud()
		return

	$('main a:contains("fotorama")').gphoto
		provider:
			name: 'fotorama'
			width: '100%'
			ratio: '16/9'
			nav: 'thumbs'
			thumbheight: '64'
			thumbwidth: '64'
			thumbfit: 'none'
			allowfullscreen: 'native'
			keyboard: true

	$('main a:contains("ggrid")').gphoto
		provider:
			name: 'ggrid'

	$(".slider").slick
		infinite: true
		slidesToShow: 3
		slidesToScroll: 3
		responsive: [
			breakpoint: 600
			settings:
				slidesToShow: 2
				slidesToScroll: 2
		,
			breakpoint: 480
			settings:
				slidesToShow: 1
				slidesToScroll: 1
		]
