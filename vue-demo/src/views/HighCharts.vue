<template>
    <!--    主界面-->
    <div style="padding: 10px;width: 90%">
        <div style="display: flex;margin: 10px">
            <el-button type="primary" @click="getOneYear">点击显示一年内的价格</el-button>
            <el-button type="primary" @click="getThreeYear">点击显示三年内的价格</el-button>
        </div>
        <div id="chart">
            <highcharts :options="chartOptions" :callback="chart"/>
        </div>
        <el-button @click="getPoint" id="showPointData" style="display: none"/>
        <el-table :data="tableData" style="width:100%">
            <el-table-column prop="articleTime" label="日期" width="300"/>
            <el-table-column prop="price" label="价格" width="300"/>
            <el-table-column label="原文链接" width="500">
                <template #default="scope">
                    <a :href="scope.row.detailUrl" target="_blank">{{scope.row.detailUrl}}</a>
                </template>
            </el-table-column>
            <el-table-column fixed="right" label="操作">
                <template #default="scope">
                    <div style="display: flex">
                        <el-button size="mini" @click="handleEdit(scope.row)">编辑</el-button>
                    </div>
                </template>
            </el-table-column>
        </el-table>
    </div>
    <!--    功能菜单-->
    <!--            弹框-->
    <el-dialog v-model="dialogVisible" title="编辑数据" width="70%" :before-close="handleClose">
        <!--                新增表单-->
        <el-form :model="form" label-width="120px" style="width: 90%">
            <el-form-item label="日期">
                <el-input v-model="form.articleTime"/>
            </el-form-item>
            <el-form-item label="价格">
                <el-input v-model="form.price"/>
            </el-form-item>
            <el-form-item label="原文链接">
                <el-input v-model="form.detailUrl"/>
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
</template>

<script>
    import request from "@/utils/request";
    import {Chart} from "highcharts-vue";

    let globalArticleLinks = [];
    let globalTableData = [];
    let title = '';
    export default {
        name: "HighCharts",
        components: {
            highcharts: Chart
        },
        data() {
            return {
                form: {},
                dialogVisible: false,
                datetime: [],
                prices: [],
                articleLinks: [],
                tableData: [],
                chartOptions: {
                    title: {
                        text: "garlic价格趋势图"
                    }
                },
            }
        },
        methods: {
            getThreeYear() {
                request.get("/garlic/getThreeYearData").then(res => {
                    this.prices = res.data.map(garlic => garlic.price).reverse();
                    this.datetime = res.data.map(garlic => garlic.articleTime.substr(0, 11)).reverse();
                    globalArticleLinks = this.articleLinks = res.data.map(garlic => garlic.detailUrl).reverse();
                });
                title = "garlic三年内价格趋势图";
                setTimeout(this.drawChart,100);
            },
            save() {
                // post请求体请求
                request.put("/garlic/updateGarlicByDate", this.form).then(res => {
                    // 响应提示
                    console.log(this.form);
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
                });
                // 保存后结束对话框
                this.dialogVisible = false;
                // 查询数据
                location.reload();
            },
            handleEdit(row) {
                // 打开弹窗按钮，将当前行的数据填充到表单中
                this.form = JSON.parse(JSON.stringify(row));
                this.dialogVisible = true;
            },
            getPoint() {
                this.tableData = globalTableData;
            },
            getOneYear() {
                request.get("/garlic/getOneYearData").then(res => {
                    this.prices = res.data.map(garlic => garlic.price).reverse();
                    this.datetime = res.data.map(garlic => garlic.articleTime.substr(0, 11)).reverse();
                    globalArticleLinks = this.articleLinks = res.data.map(garlic => garlic.detailUrl).reverse();
                });
                title = "garlic一年内价格趋势图";
                setTimeout(this.drawChart,100);
            },
            drawChart(){
                this.chartOptions = {
                    // 标题
                    title: {
                        text: title
                    },
                    subtitle: {
                        text: "数据来源：garlic"
                    },
                    xAxis: {
                        categories: this.datetime,
                        title: {
                            text: "日期"
                        },
                        visible: false,
                    },
                    // y轴
                    yAxis: {
                        title: {
                            text: "价格"
                        }
                    },
                    // 图例
                    legend: {
                        layout: "vertical",
                        align: "right",
                        verticalAlign: "middle"
                    },
                    series: [
                        {
                            name: "garlic-印尼货",
                            data: this.prices
                        }
                    ],
                    responsive: {
                        rules: [
                            {
                                condition: {
                                    maxWidth: 500
                                },
                                chartOptions: {
                                    legend: {
                                        layout: "horizontal",
                                        align: "center",
                                        verticalAlign: "bottom"
                                    }
                                }
                            }
                        ]
                    },
                    plotOptions: {
                        series: {
                            cursor: 'pointer',
                            point: {
                                events: {
                                    // 点击图表事件
                                    click() {
                                        globalTableData = [{
                                            articleTime: this.category,
                                            price: this.y,
                                            detailUrl: globalArticleLinks[this.x],
                                        }];
                                        // 操作dom点击触发事件
                                        document.getElementById('showPointData').click();
                                    }
                                }
                            },
                            marker: {
                                lineWidth: 1
                            }
                        }
                    }
                }
            }
        },
        // vue在获取相应元素之前，必须在mount钩子进行挂载，否则获取到的值为空
        mounted() {
            document.getElementById('showPointData');
        }
    };
</script>

<style scoped>
</style>