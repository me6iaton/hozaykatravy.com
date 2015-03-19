/**
 * Created by me6iaton on 02.06.14.
 */
var gulp = require('gulp')
,concat = require('gulp-concat')
,uglify = require('gulp-uglify')
,sourcemaps = require('gulp-sourcemaps');

var paths = {
	scripts: {
		dest: './static/scripts'
		,regular: [
			"./static/vendor/jquery/dist/jquery.js"
			,"./static/vendor/jquery.tagcloud.js"
			,"./static/vendor/bootstrap-sass/assets/javascripts/bootstrap.js"
			,"./static/vendor/log.js"
			,"./static/vendor/modernizr.js"
			,"./static/vendor/purl/purl.js"
			,"./static/vendor/slick.js/slick/slick.js"
			,"./static/vendor/fotorama/out/fotorama.js"
			,"./static/vendor/photoset-grid/jquery.photoset-grid.js"
			,"./static/vendor/gphoto/jquery.ggrid.js"
			,"./static/vendor/fluidbox/jquery.fluidbox.js"
			,"./static/vendor/gphoto/jquery.gphoto.js"
			,"./static/scripts/app/script.js"
		]
	}, styles: {
		regular: []
	}
};

gulp.task('default', function() {
	gulp.watch(paths.scripts.regular, ['scripts']);
});

// Process scripts and concatenate them into one output file
gulp.task('scripts',function() {
	gulp.src(paths.scripts.regular)
	.pipe(sourcemaps.init())
		.pipe(concat('all.js'))
		//.pipe(uglify({preserveComments: 'some'}))
	.pipe(sourcemaps.write())
	.pipe(gulp.dest(paths.scripts.dest));
});
