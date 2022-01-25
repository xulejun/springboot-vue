<template>
  <div style="height: 50px;line-height: 50px;border-bottom: 1px solid #ccc;display: flex">
    <div style="width: 200px;padding-left: 30px;font-weight: bold;color: dodgerblue">后台管理系统</div>
    <div style="flex: 1"></div>
    <div style="width: 100px">
      <el-dropdown v-if="haveLogin">
                <span class="el-dropdown-link">
                    {{ user ? user.username : '' }}<i class="el-icon-arrow-down el-icon--right"/>
                    <i class="el-icon-arrow-down el-icon--right"/>
                </span>
        <template #dropdown>
          <el-dropdown-menu>
            <el-dropdown-item @click="$router.push('/personal')">个人信息</el-dropdown-item>
            <el-dropdown-item @click="exit">退出系统</el-dropdown-item>
          </el-dropdown-menu>
        </template>
      </el-dropdown>
      <el-dropdown v-else>
        <el-link type="primary" @click="login">登 录</el-link>
      </el-dropdown>
    </div>
  </div>
</template>

<script>
import request from "@/utils/request";

export default {
  name: "Header",
  data() {
    return {
      haveLogin: !!sessionStorage.getItem("user"),
      user: JSON.parse(sessionStorage.getItem("user") ? sessionStorage.getItem("user") : '{}')
    }
  },
  created() {
    console.log(!!sessionStorage.getItem("user"))
  },
  methods: {
    exit() {
      request.get("/login/logout");
      sessionStorage.setItem("user", "");
      this.$router.push("/login");
    },
    login() {
      this.$router.push("/login");
    }
  }
}
</script>

<style scoped>

</style>
