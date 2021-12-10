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
            <el-input v-model="search" placeholder="请输入关键字" style="width: 20%"/>
            <el-button type="primary" style="margin-left: 5px">查询</el-button>
        </div>
        <!--        数据展示-->
        <el-table :data="tableData" stripe style="width:100%" :default-sort="{prop: 'date', order: 'descending'}">
            <el-table-column prop="id" label="ID" sortable=""/>
            <el-table-column prop="username" label="姓名"/>
            <el-table-column prop="nickName" label="昵称"/>
            <el-table-column prop="age" label="年龄"/>
            <el-table-column prop="sex" label="性别"/>
            <el-table-column prop="address" label="地址" :formatter="formatter">
            </el-table-column>
            <el-table-column fixed="right" label="操作">
                <template #default="scope">
                    <el-button size="mini" @click="handleEdit(scope.$index,scope.row)">编辑</el-button>
                    <el-popconfirm title="确认删除吗？">
                        <template #reference>
                            <el-button size="mini" type="danger" @click="handleDelete(scope.$index,scope.row)">删除
                            </el-button>
                        </template>
                    </el-popconfirm>
                </template>
            </el-table-column>
        </el-table>
        <div style="margin: 10px 0">
            <!--            分页-->
            <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
                           v-model:currentPage="currentPage" :page-sizes="[5, 10, 20]" :page-size="5"
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
                total: 10,
                tableData: [],
            }
        },
        methods: {
            save() {
                request.post("/api/user/saveUser", this.form).then(res => {
                    console.log(res);
                    this.dialogVisible = false;
                })
            },
            add() {
                this.dialogVisible = true;
                this.form = {}
            },
            handleEdit() {
            },
            handleSizeChange() {
            },
            handleCurrentChange() {
            }
        }
    }
</script>
