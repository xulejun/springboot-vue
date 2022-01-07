<template>
    <div style="padding: 10px;width: 1800px">
        <!--      搜索区域-->
        <div>
            <el-input v-model="search" placeholder="请输入关键字" style="width: 20%" clearable @keydown.enter.native="load"/>
            <el-button type="primary" style="margin-left: 5px" @click="load">查询</el-button>
        </div>
        <!--        数据展示-->
        <el-table :data="tableData" stripe style="width:100%" :default-sort="{prop: 'date', order: 'descending'}">
            <el-table-column prop="id" label="ID" sortable=""/>
            <el-table-column prop="subject" label="交易名称"/>
            <el-table-column prop="tradeNo" label="交易凭证号"/>
            <el-table-column prop="buyerId" label="支付宝唯一id"/>
            <el-table-column prop="skuTradeNo" label="商品订单号"/>
            <el-table-column prop="status" label="交易状态">
                <template #default="scope">
                    <span v-if="scope.row.status === 0">未支付</span>
                    <span v-if="scope.row.status === 1">已支付</span>
                </template>
            </el-table-column>
            <el-table-column prop="payAmount" label="支付金额"/>
            <el-table-column prop="payTime" label="支付时间"/>
            <el-table-column fixed="right" label="操作" v-if="user.role === '1'">
                <template #default="scope">
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
        </div>
    </div>
</template>

<script>
    import request from "@/utils/request";

    export default {
        name: 'Order',
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
                request.get("/order/pageFindOrder", {
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
            // save() {
            //     // 当前表单有id，则更新，否则新增
            //     if (this.form.id) {
            //         // put请求体请求
            //         request.put("/order/updateOrder", this.form).then(res => {
            //             // 响应提示
            //             if (res.code === '0') {
            //                 this.$message({
            //                     type: "success",
            //                     message: "更新成功"
            //                 })
            //             } else {
            //                 this.$message({
            //                     type: "error",
            //                     message: res.msg
            //                 })
            //             }
            //         })
            //     } else {
            //         // post请求体请求
            //         request.post("/order/saveOrder", this.form).then(res => {
            //             // 响应提示
            //             if (res.code === '0') {
            //                 this.$message({
            //                     type: "success",
            //                     message: "新增成功"
            //                 })
            //             } else {
            //                 this.$message({
            //                     type: "error",
            //                     message: res.msg
            //                 })
            //             }
            //         })
            //     }
            //     // 保存后结束对话框
            //     this.dialogVisible = false;
            //     // 查询数据
            //     this.load();
            // },
            // 新增
            // add() {
            //     this.dialogVisible = true;
            //     this.form = {};
            //     if (this.$refs['upload']) {
            //         // 清除历史上传列表
            //         this.$refs['upload'].clearFiles();
            //     }
            // },
            // 编辑
            // handleEdit(row) {
            //     // 实际上就是打开新增弹窗按钮，将当前行的数据填充到表单中
            //     this.form = JSON.parse(JSON.stringify(row));
            //     this.dialogVisible = true;
            //     // 解决dom不存在的问题（编辑是异步操作，找不到uplad的引用，会抛出undefined）
            //     this.$nextTick(() => {
            //         if (this.$refs['upload']) {
            //             // 清除历史上传列表
            //             this.$refs['upload'].clearFiles();
            //         }
            //     });
            // },
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
                request.delete("/order/deleteOrder/" + id).then(res => {
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
