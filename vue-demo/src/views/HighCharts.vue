<template>
    <div style="padding: 10px;width: 90%">
        <div style="height: 10%;margin: 10px">
            <el-button type="primary" @click="moreChart">点击显示一年内的价格</el-button>
        </div>
        <div id="container"></div>
    </div>
</template>

<script>
    import Highcharts from "highcharts/highstock";
    import request from "@/utils/request";

    export default {
        name: "HighCharts",
        data() {
            return {
                dataMessage: '',
                data: '',
                prices: [],
                datetime: [],
            }
        },
        // 页面加载时就调用该方法
        created() {
            request.get("/garlic/getYearPrice").then(res => {
                this.prices = res.data.map(garlic => garlic.price).reverse();
            });
        },
        methods: {
            moreChart() {
                request.get("/garlic/getYearPrice").then(res => {
                    this.prices = res.data.map(garlic => garlic.price).reverse();
                    // this.datetime = res.data.map(garlic => garlic.articleTime).reverse();
                });
                this.chart = new Highcharts.Chart("container", {
                    title: {
                        text: "garlic一年内价格趋势图"
                    },
                    subtitle: {
                        text: "数据来源：garlic"
                    },
                    yAxis: {
                        title: {
                            text: "价格"
                        }
                    },
                    legend: {
                        layout: "vertical",
                        align: "right",
                        verticalAlign: "middle"
                    },
                    plotOptions: {
                        series: {
                            label: {
                                connectorAllowed: false
                            },
                            pointStart: 1
                        }
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
                    }
                });
            }
        }
    };
</script>

<style scoped>
</style>