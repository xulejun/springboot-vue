<template>
    <div style="background-color: cornflowerblue;width: 100%;height: 100vh;overflow: hidden">
        <div style="width: 400px;margin: 150px auto">
            <div style="color:seashell;font-size: 30px;text-align: center;padding: 30px 0">欢迎登录</div>
            <el-form ref="form" :model="form" size="normal" :rules="rules">
                <!--                icon图标显示不出来-->
                <el-form-item prop="username">
                    <el-input prefix-icon="el-icon-user-solid" v-model="form.username"></el-input>
                </el-form-item>
                <el-form-item prop="password">
                    <!--                    键盘回车事件-->
                    <el-input prefix-icon="el-icon-lock" v-model="form.password" show-password
                              @keydown.enter.native="login"></el-input>
                </el-form-item>
                <el-form-item>
                    <el-button style="width: 100%" type="primary" @click="login" @keydown.enter.native="login">登 录
                    </el-button>
                </el-form-item>
            </el-form>
        </div>
    </div>
</template>

<script>
    import request from "../utils/request";

    export default {
        name: "Login",
        data() {
            return {
                form: {},
                rules: {
                    username: [
                        {required: true, message: '请输入用户名', trigger: 'blur'},
                    ],
                    password: [
                        {required: true, message: '请输入密码', trigger: 'blur'},
                    ],
                }
            }
        },
        methods: {
            login() {
                // 表单验证是否合法
                this.$refs['form'].validate((valid) => {
                    if (valid) {
                        request.post("/user/login", this.form).then(res => {
                            // 响应提示
                            if (res.code === '0') {
                                this.$message({
                                    type: "success",
                                    message: "登录成功"
                                });
                                // 缓存用户信息
                                sessionStorage.setItem("user", JSON.stringify(res.data));
                                // 登录成功之后进行页面跳转
                                this.$router.push("/")
                            } else {
                                this.$message({
                                    type: "error",
                                    message: res.msg
                                })
                            }
                        })
                    }
                });
            }
        }
    }
</script>

<style scoped>

</style>