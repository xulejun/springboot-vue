<template>
  <div style="background-color: #8cc5ff;width: 100%;height: 100vh;overflow: hidden">
    <div style="width: 400px;margin: 150px auto">
      <div style="color: white;font-size: 30px;text-align: center;padding: 30px 0">欢 迎 登 录</div>
      <el-form ref="form" :model="form" size="normal" :rules="rules">
        <!--                icon图标显示不出来-->
        <el-form-item prop="username">
          <el-input prefix-icon="el-icon-user-solid" v-model="form.username" placeholder="请输入账号"/>
        </el-form-item>
        <el-form-item prop="password">
          <!--                    键盘回车事件-->
          <el-input prefix-icon="el-icon-lock" v-model="form.password" @keydown.enter.native="login"
                    show-password placeholder="请输入密码"/>
        </el-form-item>
        <el-form-item>
          <div style="display: flex">
            <el-input prefix-icon="el-icon-key" v-model="form.validCode" style="width: 50%"
                      @keydown.enter.native="login" placeholder="请输入验证码"/>
            <ValidCode style="margin-left: 10%" @input="createValidCode"/>
          </div>
        </el-form-item>
        <el-button style="width: 100%" type="primary" @click="login" @keydown.enter.native="login">登 录</el-button>
        <br>
        <el-button style="width: 100%;margin-top: 10px" type="primary" @click="$router.push('/register')">注 册
        </el-button>
      </el-form>
    </div>
  </div>
</template>

<script>
import request from "../utils/request";
import ValidCode from "../components/ValidCode";

export default {
  name: "Login",
  components: {
    ValidCode
  },
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
      },
      validCode: '',
    }
  },
  created() {
    request.get("/login/preLogin").then(res => {
      console.log(res.data);
      if (res.data) {
        sessionStorage.setItem("user", JSON.stringify(res.data));
        this.$router.push("/highCharts");
      }
    })
  },
  methods: {
    // 接收验证码组件提交的 4位验证码
    createValidCode(data) {
      this.validCode = data;
    },
    login() {
      // 表单验证是否合法
      this.$refs['form'].validate((valid) => {
        if (valid) {
          // 登录验证码校验
          if (!this.form.validCode) {
            this.$message.error("请输入验证码");
            return
          }
          if (this.form.validCode.toLowerCase() !== this.validCode.toLowerCase()) {
            this.$message.error("验证码错误");
            return;
          }
          // 提交请求
          request.post("/login/doLogin", this.form).then(res => {
            // 响应提示
            if (res.code === '0') {
              this.$message({
                type: "success",
                message: "登录成功"
              });
              // 缓存用户信息
              sessionStorage.setItem("user", JSON.stringify(res.data));
              // 登录成功之后进行页面跳转
              this.$router.push("/highCharts")
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
