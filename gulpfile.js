var gulp       = require('gulp');
var browserify = require('browserify');
var riotify    = require('riotify');
var source     = require('vinyl-source-stream');

gulp.task('browserify', function(){
  browserify({ entries: ['src/app.js'] })
  .transform(riotify) // pass options if you need
  .bundle()
  .pipe(source('app.js'))
  .pipe(gulp.dest('dist/'))
});