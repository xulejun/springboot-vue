<template>
    <div style="height: 50px;line-height: 50px;border-bottom: 1px solid #ccc;display: flex">
        <div style="width: 200px;padding-left: 30px;font-weight: bold;color: dodgerblue">后台管理系统</div>
        <div style="flex: 1"></div>
        <div style="width: 100px">
            <el-dropdown>
                <span class="el-dropdown-link">
                    {{user ? user.username:''}}<i class="el-icon-arrow-down el-icon--right"/>
                    <i class="el-icon-arrow-down el-icon--right"/>
                </span>
                <template #dropdown>
                    <el-dropdown-menu>
                        <el-dropdown-item @click="$router.push('/personal')">个人信息</el-dropdown-item>
                        <el-dropdown-item @click="exit">退出系统</el-dropdown-item>
                    </el-dropdown-menu>
                </template>
            </el-dropdown>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Header",
        data() {
            return {
                user: JSON.parse(sessionStorage.getItem("user") ? sessionStorage.getItem("user") : '{}')
            }
        },
        methods: {
            exit() {
                sessionStorage.setItem("user", "");
                this.$router.push("/login");
            }
        }
    }
</script>

<style scoped>

</style>