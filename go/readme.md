# go 入门

## 设置网络代理

- export http_proxy=http://127.0.0.1:10818
- export https_proxy=http://127.0.0.1:10818

## 使用步骤

- <https://go.dev/doc/tutorial/getting-started>
- go mod init example.com/hello
- go run .
- go help
<!-- 替换远程路径为本地路径 -->
- go mod edit -replace example.com/greetings=../greetings
<!-- - go get rsc.io/quote -->
<!-- 添加新的第三方pkg之后，加载 -->
- go mod tidy
<!-- 运行测试test -->
- go test
<!-- 编译 -->
- go build
<!-- 查看编译之后二进制文件路径 -->
- go list -f '{{.Target}}'
<!-- 编译完后，运行 -->
- ./hello
- go install
<!-- 添加 export PATH=$PATH:/Users/ningjinpeng/go/bin/ 到 .bash_profile/.zshrc -->
<!-- 然后就重新打开个terminal可以直接执行 hello -->
