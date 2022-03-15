'use strict' // makes the JavaScript you write a little bit better

var gulp = require('gulp')
const Gitdown = require('gitdown');

gulp.task('default', function() {
    console.log('Here is the default task')
})

gulp.task('sometask', function() {
    console.log('Here is some task')
})

// without async running asks Did you forget to signal async completion?
// https://stackoverflow.com/questions/36897877/gulp-error-the-following-tasks-did-not-complete-did-you-forget-to-signal-async
// - Also useful: When the link starts with a /, it is relative to
// the root of the repository (regardless of whether the markdown
// file is nested in subdirectories)

gulp.task('someothertask', async function() {
    console.log('Here is some other task')
})

gulp.task('ARA', async function() {
    console.log('Building Application Reference Architecture')
    console.log(__dirname)

    console.log('./.README/README.md')
    //console.log(__dirname + '/.README/README.md')
})


gulp.task('gitdown', () => {
  return Gitdown
    // ./.README/README.md fails saying "fileName must be an absolute path"
    // ?? config issue?  I did npm init ...

    .readFile(__dirname + '/.README/README.md')
    .writeFile(__dirname + '/README.md');
});

gulp.task('watch', () => {
  gulp.watch(['./.README/*'], ['gitdown']);
});
