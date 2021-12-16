<template>
    <div style="padding: 10px;width: 1800px">
        <!--      功能区域-->
        <div style="margin: 10px 0">
            <el-button type="primary" @click="add">新增</el-button>
            <el-button type="primary">导入</el-button>
            <el-button type="primary">导出</el-button>
        </div>
        <!--      搜索区域-->
        <div>
            <el-input v-model="search" placeholder="请输入关键字" style="width: 20%" clearable @keydown.enter.native="load"/>
            <el-button type="primary" style="margin-left: 5px" @click="load">查询</el-button>
        </div>
        <!--        数据展示-->
        <el-table :data="tableData" stripe style="width:100%" :default-sort="{prop: 'date', order: 'descending'}">
            <el-table-column prop="id" label="ID" sortable=""/>
            <el-table-column prop="username" label="姓名"/>
            <el-table-column prop="nickName" label="昵称"/>
            <el-table-column prop="age" label="年龄"/>
            <el-table-column prop="sex" label="性别"/>
            <el-table-column prop="address" label="地址" :formatter="formatter"/>
            <el-table-column prop="role" label="角色">
                <template #default="scope">
                    <span v-if="scope.row.role === '1'">管理员</span>
                    <span v-if="scope.row.role === '2'">普通用户</span>
                </template>
            </el-table-column>
            <el-table-column fixed="right" label="操作">
                <template #default="scope">
                    <el-button size="mini" @click="handleEdit(scope.row)">编辑</el-button>
                    <!--                    气泡确认框 -->
                    <el-popconfirm title="确认删除吗？" @confirm="handleDelete(scope.row.id)">
                        <template #reference>
                            <el-button size="mini" type="danger">删除</el-button>
                        </template>
                    </el-popconfirm>
                </template>
            </el-table-column>
        </el-table>
        <div style="margin: 10px 0">
            <!--            分页-->
            <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
                           v-model:currentPage="currentPage" :page-sizes="[5, 10, 20]" :page-size="pageSize"
                           layout="total, sizes, prev, pager, next, jumper" :total="total"/>
            <!--            弹框-->
            <el-dialog v-model="dialogVisible" title="新增用户" width="30%" :before-close="handleClose">
                <!--                新增表单-->
                <el-form :model="form" label-width="120px" style="width: 80%">
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
                </el-form>
                <!--                确认框-->
                <template #footer>
                  <span class="dialog-footer">
                    <el-button @click="dialogVisible = false">取消</el-button>
                    <el-button type="primary" @click="save">确定</el-button>
                  </span>
                </template>
            </el-dialog>
        </div>
    </div>
</template>

<script>
    import request from "@/utils/request";

    export default {
        name: 'Home',
        components: {},
        data() {
            return {
                form: {},
                dialogVisible: false,
                search: '',
                currentPage: 1,
                pageSize: 5,
                total: 10,
                tableData: [],
                user: {}
            }
        },
        // 页面加载时调用此方法
        created() {
            const userSession = sessionStorage.getItem("user") ? sessionStorage.getItem("user") : "{}";
            this.user = JSON.parse(userSession);
            this.load();
        },

        methods: {
            load() {
                // get传参请求
                request.get("/user/pageFindUser", {
                    params: {
                        pageNum: this.currentPage,
                        pageSize: this.pageSize,
                        search: this.search
                    }
                }).then(res => {
                    this.tableData = res.data.records;
                    this.total = res.data.total;
                })
            },
            save() {
                // 当前表单有id，则更新，否则新增
                if (this.form.id) {
                    // put请求体请求
                    request.put("/user/updateUser", this.form).then(res => {
                        // 响应提示
                        if (res.code === '0') {
                            this.$message({
                                type: "success",
                                message: "更新成功"
                            })
                        } else {
                            this.$message({
                                type: "error",
                                message: res.msg
                            })
                        }
                    })
                } else {
                    // post请求体请求
                    request.post("/user/saveUser", this.form).then(res => {
                        // 响应提示
                        if (res.code === '0') {
                            this.$message({
                                type: "success",
                                message: "新增成功"
                            })
                        } else {
                            this.$message({
                                type: "error",
                                message: res.msg
                            })
                        }
                    })
                }
                // 保存后结束对话框
                this.dialogVisible = false;
                // 查询数据
                this.load();
            },
            // 新增
            add() {
                this.dialogVisible = true;
                this.form = {}
            },
            // 编辑
            handleEdit(row) {
                // 实际上就是打开新增弹窗按钮，将当前行的数据填充到表单中
                this.form = JSON.parse(JSON.stringify(row));
                this.dialogVisible = true
            },
            // 改变当前每页的个数触发
            handleSizeChange(pageSize) {
                this.pageSize = pageSize;
                this.load();
            },
            // 改变当前页码触发
            handleCurrentChange(pageNum) {
                this.currentPage = pageNum;
                this.load();
            },
            // 删除
            handleDelete(id) {
                // delete接口调用
                request.delete("/user/deleteUser/" + id).then(res => {
                    // 响应结果提示
                    if (res.code === '0') {
                        this.$message({
                            type: "success",
                            message: "删除成功"
                        })
                    } else {
                        this.$message({
                            type: "error",
                            message: res.message
                        })
                    }
                    // 删除后关闭对话框
                    this.dialogVisible = false;
                    this.load()
                })
            }
        }
    }
</script>
