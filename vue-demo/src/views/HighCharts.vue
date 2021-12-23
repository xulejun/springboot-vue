<template>
    <div style="padding: 10px;width: 90%">
        <!--        <div style="height: 10%;margin: 10px">-->
        <!--            <el-button type="primary" @click="moreChart" id="showData">点击显示一年内的价格</el-button>-->
        <!--        </div>-->
        <div id="container"></div>
        <p id="msg" style="margin: 10px"/>
    </div>
</template>

<script>
    import Highcharts from "highcharts/highstock";
    import request from "@/utils/request";

    let articleLink = [];

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
                this.datetime = res.data.map(garlic => garlic.articleTime.substr(0, 11)).reverse();
                articleLink = res.data.map(garlic => garlic.detailUrl).reverse();
            });
            setTimeout(this.moreChart, 100);
        },
        methods: {
            moreChart() {
                this.chart = new Highcharts.Chart("container", {
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
                                    // 数据点点击事件
                                    // 其中 e 变量为事件对象，this 为当前数据点对象
                                    click() {
                                        // console.log("hello" + this.datetime);
                                        console.log(articleLink[this.x]);
                                        document.getElementById("msg").innerHTML =
                                            '时间：' + this.category + '<br/> 价格：' + this.y + '<br/> 原文链接：' +
                                            '<a target="_blank" href="' + articleLink[this.x] + '">' + articleLink[this.x] + '</a>';
                                    }
                                }
                            },
                            marker: {
                                lineWidth: 1
                            }
                        }
                    }
                });
            }
        }
    };
</script>

<style scoped>
</style>