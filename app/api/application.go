package main
import (
  "fmt"
  "net/http"
  "github.com/gin-gonic/gin"
)
func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Root Url", r.URL.Path[1:])
}

func main() {
    router := gin.Default()
    router.Static("/", "./assets")
    router.get("/api/root", handler)
    router.Run(":8080")
}
