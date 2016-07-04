var gulp = require("gulp");
var ts = require("gulp-typescript");

gulp.task("build:ts", function () {
    var tsResult = gulp.src("src/ts/*.ts")
        .pipe(ts({
              noImplicitAny: true,
              target: "ES5",
              out: "output.js"
        }));
    return tsResult.js.pipe(gulp.dest("dest/js"));
});

gulp.task("build:html", function () {
    gulp.src("src/index.html")
    .pipe(gulp.dest("dest"));
});

gulp.task("build:css", function () {
    gulp.src("src/css/css.css")
    .pipe(gulp.dest("dest/css"));
});

gulp.task("default", ["build:html", "build:css", "build:ts"]);