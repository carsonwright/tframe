gulp   = require("gulp")
gulpgo = require("gulp-go")

go = Object()
gulp.task("go-run", ->
  go = gulpgo.run("./app/api/application.go", ["--arg1", "value1"], {cwd: __dirname, stdio: 'inherit'})
)

gulp.task("devs", ["go-run"], ->
  gulp.watch([__dirname+"/**/*.go"]).on("change", ->
    go.restart();
  )
)

gulp.task("default", ["devs"])
