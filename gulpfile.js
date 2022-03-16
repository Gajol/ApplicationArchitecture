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

gulp.task('log-test', async function() {
    console.log('Building Application Reference Architecture')
    console.log(__dirname)

    console.log('./.README/README.md')
    //console.log(__dirname + '/.README/README.md')
})


// gulp.start deprecated 4.++
//gulp.task('ARA', function(){
//  gulp.start('ara-no-toc');
//  gulp.start('ara-github');
//})

// https://stackoverflow.com/questions/32981108/how-to-run-a-gulp-task-from-another-task
// const task1 = () => { /*do stuff*/ };
// const task2 = () => { /*do stuff*/ };
// register task with gulp
// gulp.task(task1);
//(gulp.series("task1", "task2")());
//(gulp.parallel("task1", "task2")());

const araNoTOC = () => {
  return Gitdown
    // ./.README/README.md fails saying "fileName must be an absolute path"
    // ?? config issue?  I did npm init ...

    .readFile(__dirname + '/ARA/ARA-Input.md')
    .writeFile(__dirname + '/ARA.md');
};
gulp.task(araNoTOC);

const araTOC = async () => {
  return Gitdown
    // ./.README/README.md fails saying "fileName must be an absolute path"
    // ?? config issue?  I did npm init ...

    .readFile(__dirname + '/ARA/ARA-Github-Input.md')
    .writeFile(__dirname + '/ARA-Github.md');
};
gulp.task(araTOC);

const ara = async () => {
  gulp.series("araTOC", "araNoTOC")();
}
gulp.task(ara)


gulp.task('watch', () => {
  gulp.watch(['./.README/*'], ['gitdown']);
});
