// vue解决跨域问题
module.exports = {
    devServer: {
        // 设置本地默认端口，可选
        // port: 9876,
        // 设置代理
        proxy: {
            // 设置拦截器，格式：斜杠+拦截器名字
            'api': {
                // 代理的目标地址
                target: 'http://localhost:8096',
                // 是否设置同源
                changeOrigin: true,
                // 路径重写
                pathRewrite: {
                    // 选择忽略拦截器里面的单词
                    '/api': ''
                }
            }
        }
    }

}