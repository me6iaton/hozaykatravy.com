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

	$('.content a:contains("fotorama")').gphoto
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

	$('.content a:contains("ggrid")').gphoto
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


	# * Replace all SVG images with inline SVG
#	jQuery(".img-svg").each ->
#		$img = jQuery(this)
#		imgID = $img.attr("id")
#		imgClass = $img.attr("class")
#		imgURL = $img.attr("src")
#		jQuery.get imgURL, ((data) ->
#
#			# Get the SVG tag, ignore the rest
#			$svg = jQuery(data).find("svg")
#
#			# Add replaced image's ID to the new SVG
#			$svg = $svg.attr("id", imgID)  if typeof imgID isnt "undefined"
#
#			# Add replaced image's classes to the new SVG
#			$svg = $svg.attr("class", imgClass + " replaced-svg")  if typeof imgClass isnt "undefined"
#
#			# Remove any invalid XML tags as per http://validator.w3.org
#			$svg = $svg.removeAttr("xmlns:a")
#
#			# Replace image with new SVG
#			$img.replaceWith $svg
#			return
#		), "xml"
#		return
