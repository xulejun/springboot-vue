<template>
    <div style="padding: 10px;width: 1800px">
        <!--      功能区域-->
        <div style="margin: 10px 0">
            <el-button type="primary" @click="add">新增</el-button>
        </div>
        <!--      搜索区域-->
        <div>
            <el-input v-model="search" placeholder="请输入关键字" style="width: 20%" clearable @keydown.enter.native="load"/>
            <el-button type="primary" style="margin-left: 5px" @click="load">查询</el-button>
        </div>
        <!--        数据展示-->
        <el-table :data="tableData" stripe style="width:100%" :default-sort="{prop: 'date', order: 'descending'}">
            <el-table-column prop="id" label="ID" sortable=""/>
            <el-table-column prop="name" label="商品名称"/>
            <el-table-column prop="price" label="单价"/>
            <el-table-column prop="stock" label="库存"/>
            <el-table-column prop="createTime" label="上线时间"/>
            <el-table-column label="图片展示">
                <template #default="scope">
                    <el-image
                            style="width: 100px; height: 100px"
                            :src="scope.row.path"
                            :preview-src-list="[scope.row.path]"/>
                </template>
            </el-table-column>
            <el-table-column fixed="right" label="操作" v-if="user.role === '1'">
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
            <el-dialog v-model="dialogVisible" title="新增商品" width="30%" :before-close="handleClose">
                <!--                新增表单-->
                <el-form :model="form" label-width="120px" style="width: 80%">
                    <el-form-item label="商品名称">
                        <el-input v-model="form.name"/>
                    </el-form-item>
                    <el-form-item label="单价">
                        <el-input v-model="form.price"/>
                    </el-form-item>
                    <el-form-item label="库存">
                        <el-input v-model="form.stock"/>
                    </el-form-item>
                    <el-form-item label="上线时间">
                        <el-date-picker
                                v-model="form.createTime"
                                type="datetime"
                                placeholder="选择日期时间"
                                :default-time="defaultTime"
                                clearable>
                        </el-date-picker>
                    </el-form-item>
                    <el-form-item label="上传图片">
                        <!--                        上传图片调用后端接口，需要解决后端跨域问题，成功后将图片路径保存到数据库中-->
                        <el-upload ref="upload" action="uploadUrl"
                                   :on-success="fileUpload">
                            <el-button size="small" type="primary">点击上传</el-button>
                        </el-upload>
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
        name: 'Product',
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
                user: {},
                uploadUrl: "http://" + window.server.fileUploadUrl + ":8096/product/uploadFile"
            }
        },
        // 页面加载时调用此方法
        created() {
            const userSession = sessionStorage.getItem("user") ? sessionStorage.getItem("user") : "{}";
            this.user = JSON.parse(userSession);
            this.load();
        },

        methods: {
            fileUpload(res) {
                this.form.path = res.data
            },
            load() {
                // get传参请求
                request.get("/product/pageFindProduct", {
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
                    request.put("/product/updateProduct", this.form).then(res => {
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
                    request.post("/product/saveProduct", this.form).then(res => {
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
                this.form = {};
                if (this.$refs['upload']) {
                    // 清除历史上传列表
                    this.$refs['upload'].clearFiles();
                }
            },
            // 编辑
            handleEdit(row) {
                // 实际上就是打开新增弹窗按钮，将当前行的数据填充到表单中
                this.form = JSON.parse(JSON.stringify(row));
                this.dialogVisible = true;
                // 解决dom不存在的问题（编辑是异步操作，找不到uplad的引用，会抛出undefined）
                this.$nextTick(() => {
                    if (this.$refs['upload']) {
                        // 清除历史上传列表
                        this.$refs['upload'].clearFiles();
                    }
                });
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
                request.delete("/product/deleteProduct/" + id).then(res => {
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
