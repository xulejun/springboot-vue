<template>
    <div style="padding: 10px;width: 90%">
        <div style="height: 10%;margin: 10px">
            <el-button type="primary" @click="getYear">点击显示一年内的价格</el-button>
        </div>
        <div id="chart">
            <highcharts :options="chartOptions" :callback="chart"/>
        </div>
        <el-button @click="getPoint" id="showPointData" style="display: none"/>
        <el-table :data="tableData" style="width:100%">
            <el-table-column prop="date" label="日期" width="300"/>
            <el-table-column prop="price" label="价格" width="300"/>
            <el-table-column label="原文链接" width="500">
                <template #default="scope">
                    <a :href="scope.row.articleLink" target="_blank">{{scope.row.articleLink}}</a>
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
</template>

<script>
    import request from "@/utils/request";
    import {Chart} from "highcharts-vue";

    let globalArticleLinks = [];
    let globalTableData = [];
    export default {
        name: "HighCharts",
        components: {
            highcharts: Chart
        },
        // 页面加载时就调用该方法
        created() {
            request.get("/garlic/getYearPrice").then(res => {
                this.prices = res.data.map(garlic => garlic.price).reverse();
                this.datetime = res.data.map(garlic => garlic.articleTime.substr(0, 11)).reverse();
                globalArticleLinks = this.articleLinks = res.data.map(garlic => garlic.detailUrl).reverse();
            });
        },
        data() {
            return {
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
            getPoint() {
                this.tableData = globalTableData;
            },
            getYear() {
                this.chartOptions = {
                    // 标题
                    title: {
                        text: "garlic一年内价格趋势图"
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
                                            date: this.category,
                                            price: this.y,
                                            articleLink: globalArticleLinks[this.x],
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
            },
        },
        // vue在获取相应元素之前，必须在mount钩子进行挂载，否则获取到的值为空
        mounted() {
            document.getElementById('showPointData');
        }
    };
</script>

<style scoped>
</style>