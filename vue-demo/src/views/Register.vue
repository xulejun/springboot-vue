<template>
  <div style="background-color: cornflowerblue;width: 100%;height: 100vh;overflow: hidden">
    <div style="width: 400px;margin: 150px auto">
      <div style="color:seashell;font-size: 30px;text-align: center;padding: 30px 0">欢迎注册</div>
      <el-form ref="form" :model="form" size="normal" :rules="rules">
        <!--                icon图标显示不出来-->
        <el-form-item prop="username">
          <el-input prefix-icon="el-icon-user-solid" v-model="form.username"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input prefix-icon="el-icon-lock" v-model="form.password" show-password></el-input>
        </el-form-item>
        <el-form-item prop="confirm">
          <el-input prefix-icon="el-icon-lock" v-model="form.confirm" show-password></el-input>
        </el-form-item>
        <el-form-item>
          <el-button style="width: 100%" type="primary" @click="register">注 册</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
import request from "../utils/request";

export default {
  name: "Register",
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
        confirm: [
          {required: true, message: '请输入确认密码', trigger: 'blur'},
        ]
      }

    }
  },
  methods: {
    register() {
      // 确认密码校验
      if (this.form.password !== this.form.confirm) {
        this.$message({
          type: "error",
          message: "两次密码不一致"
        });
        return
      }
      // 表单验证是否合法，否则不调用接口
      this.$refs['form'].validate((valid) => {
        if (valid) {
          request.post("/user/register", this.form).then(res => {
            // 响应提示
            if (res.code === '0') {
              this.$message({
                type: "success",
                message: "注册成功"
              });
              // 登录成功之后进行页面跳转
              this.$router.push("/login")
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
