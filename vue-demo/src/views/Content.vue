<template>
    <div style="padding: 10px;width: 1800px">
        <!--      功能区域-->
        <div style="margin: 10px 0">
            <el-button type="primary" @click="add">新增</el-button>
            <el-button type="danger" @click="bathDelete">批量删除</el-button>
        </div>
        <!--      搜索区域-->
        <div>
            <el-input v-model="search" placeholder="请输入关键字" style="width: 20%" clearable @keydown.enter.native="load"/>
            <el-button type="primary" style="margin-left: 5px" @click="load">查询</el-button>
        </div>
        <!--        数据展示-->
        <el-table :data="tableData" stripe style="width:100%" :default-sort="{prop: 'date', order: 'descending'}"
                  @selection-change="handleSelectionChange">
            <el-table-column type="selection" width="55"/>
            <el-table-column prop="id" label="ID" sortable=""/>
            <el-table-column prop="title" label="标题"/>
            <el-table-column prop="author" label="作者"/>
            <el-table-column prop="createTime" label="创建时间" value-format="yyyy-MM-dd HH:mm:ss"/>
            <el-table-column fixed="right" label="操作">
                <template #default="scope">
                    <el-button size="mini" @click="detailsMethod(scope.row)">详情</el-button>
                    <div v-if="user.role ==='1'">
                        <el-button size="mini" @click="handleEdit(scope.row)">编辑</el-button>
                        <!--                    气泡确认框 -->
                        <el-popconfirm title="确认删除吗？" @confirm="handleDelete(scope.row.id)">
                            <template #reference>
                                <el-button size="mini" type="danger">删除</el-button>
                            </template>
                        </el-popconfirm>
                    </div>
                </template>
            </el-table-column>
        </el-table>
        <div style="margin: 10px 0">
            <!--            分页-->
            <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
                           v-model:currentPage="currentPage" :page-sizes="[5, 10, 20]" :page-size="pageSize"
                           layout="total, sizes, prev, pager, next, jumper" :total="100"/>
            <!--            弹框-->
            <el-dialog v-model="dialogVisible" title="新增内容" width="70%" :before-close="handleClose">
                <!--                新增表单-->
                <el-form :model="form" label-width="120px" style="width: 90%">
                    <el-form-item label="标题">
                        <el-input v-model="form.title"/>
                    </el-form-item>
                    <el-form-item label="详情">
                        <div id="div1">
                        </div>
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
            <el-dialog v-model="vis" title="详情内容" width="50%">
                <el-card>
                    <div v-html="rowData.details" style="min-height: 100px"></div>
                </el-card>
            </el-dialog>
        </div>
    </div>
</template>

<script>
    import request from "@/utils/request";
    import E from 'wangeditor';

    let editor;

    export default {
        name: 'Content',
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
                vis: false,
                rowData: {},
                user: {},
                ids: []
            }
        },
        // 页面加载时调用此方法
        created() {
            const userSession = sessionStorage.getItem("user") ? sessionStorage.getItem("user") : "{}";
            this.user = JSON.parse(userSession);
            this.load();
        },

        methods: {
            bathDelete() {
                console.log(this.ids);
                if (this.ids.length === 0) {
                    this.$message.error("请选择删除的数据");
                    return
                }
                request.post("/content/bathDelete", this.ids).then(res => {
                    // 响应提示
                    if (res.code === '0') {
                        this.$message({
                            type: "success",
                            message: "删除成功"
                        })
                    } else {
                        this.$message({
                            type: "error",
                            message: res.msg
                        })
                    }
                    this.load();
                })
            },
            // 将全选中的元素只获取id
            handleSelectionChange(val) {
                this.ids = val.map(row => row.id);
            },
            detailsMethod(row) {
                this.rowData = row;
                this.vis = true;
            },
            load() {
                // get传参请求
                request.get("/content/pageFindContent", {
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
                // 获取富文本内容和作者
                this.form.details = editor.txt.html();
                this.form.author = JSON.parse(sessionStorage.getItem("user")).username;
                // 当前表单有id，则更新，否则新增
                if (this.form.id) {
                    this.form.createTime = '';
                    // put请求体请求
                    request.put("/content/updateContent", this.form).then(res => {
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
                    request.post("/content/saveContent", this.form).then(res => {
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
                this.$nextTick(() => {
                    if (!editor) {
                        editor = new E('#div1');
                        // 上传图片接口地址
                        editor.config.uploadImgServer = 'http://' + window.server.fileUploadUrl + ':8096/content/uploadImg';
                        // 图片参数名称，与后端接口参数名一致
                        editor.config.uploadFileName = 'file';
                        editor.create();
                    }
                    // 清除编辑器里的内容
                    editor.txt.clear();
                });
            },
            // 编辑
            handleEdit(row) {
                // 实际上就是打开新增弹窗按钮，将当前行的数据填充到表单中
                this.form = JSON.parse(JSON.stringify(row));
                this.dialogVisible = true;
                this.$nextTick(() => {
                    if (!editor) {
                        editor = new E('#div1');
                        editor.create();
                    }
                    editor.txt.html(row.details);
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
                request.delete("/content/deleteContent/" + id).then(res => {
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
