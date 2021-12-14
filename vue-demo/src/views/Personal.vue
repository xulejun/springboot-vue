<template>
    <div style="margin: 10px 0">
        <!--            弹框-->
        <h2 style="margin: 10px 10%;color: lightslategrey">编辑个人信息</h2>
        <el-form
                :label-position="left"
                label-width="80px"
                :model="form"
                style="width: 30%">
            <el-form-item label="用户名">
                <el-input v-model="form.username"/>
            </el-form-item>
            <el-form-item label="昵称">
                <el-input v-model="form.nickName"/>
            </el-form-item>
            <el-form-item label="年龄">
                <el-input v-model="form.age"/>
            </el-form-item>
            <el-form-item label="性别">
                <el-radio v-model="form.sex" label="男">男</el-radio>
                <el-radio v-model="form.sex" label="女">女</el-radio>
            </el-form-item>
            <el-form-item label="地址">
                <el-input v-model="form.address" type="textarea"/>
            </el-form-item>
            <!--                确认框-->
            <p style="margin-left: 10%">
                <el-button type="primary" @click="update">保存</el-button>
            </p>
        </el-form>
    </div>
</template>

<script>
    import request from "../utils/request";

    export default {
        name: "Personal",
        created() {
            request.get("/user/userInfo", {
                params: {
                    username: JSON.parse(sessionStorage.getItem("user")).username
                }
            }).then(res => {
                if (res.code === '0') {
                    this.form = res.data;
                } else {
                    this.$message({
                        type: "error",
                        message: res.msg
                    })
                }
            })
        },
        data() {
            return {
                form: {},
            }
        },
        methods: {
            update() {
                request.put("/user/updateUser", this.form).then(res => {
                    if (res.code === '0') {
                        this.$message({
                            type: "success",
                            message: "保存成功"
                        });
                        sessionStorage.setItem("user", JSON.stringify(this.form));
                        location.reload();
                    } else {
                        this.$message({
                            type: "error",
                            message: res.msg
                        })
                    }
                })
            }
        }
    }
</script>

<style scoped>

</style>