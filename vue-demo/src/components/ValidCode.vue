<template>
    <div class="ValidCode disabled-select"
         :style="`width:${width};height:${height}`"
         @click="refreshCode">
        <span v-for="(item ,index) in codeList"
              :key="index"
              :style="getStyle(item)">
            {{item.code}}
        </span>

    </div>
</template>

<script>
    export default {
        name: "ValidCode",
        model: {
            prop: 'value',
            event: 'input'
        },
        props: {
            width: {
                type: String,
                default: '100px'
            },
            height: {
                type: String,
                default: '40px'
            },
            length: {
                type: Number,
                default: 4
            },
            refresh: {
                type: Number
            },
        },
        data() {
            return {
                codeList: [],
            }
        },
        watch: {
            refresh() {
                this.createdCode()
            }
        },
        mounted() {
            this.createdCode()
        },
        methods: {
            refreshCode() {
                this.createdCode()
            },
            createdCode() {
                let len = this.length;
                let codeList = [];
                let chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
                let charsLen = chars.length;
                for (let i = 0; i < len; i++) {
                    let rgb = [Math.round(Math.random() * 220), Math.round(Math.random() * 240), Math.round(Math.random() * 200)];
                    // let rgb = [255, 255, 255];
                    codeList.push({
                        // 随机码
                        code: chars.charAt(Math.floor(Math.random() * charsLen)),
                        // 颜色
                        color: `rgb(${rgb})`,
                        // 大小
                        fontSize: `${15 + (+[Math.floor(Math.random() * 10)] + 6)}px`,
                        // 相隔间距
                        padding: `${[Math.floor(Math.random() * 10)]}px`,
                        transform: `rotate(${Math.floor(Math.random() * 90) - Math.floor(Math.random() * 90)}deg)`
                    })
                }
                // 指向
                this.codeList = codeList;
                // 将当前数据派发出去
                this.$emit('input', codeList.map(item => item.code).join(''))
            },
            getStyle(data) {
                return `color: ${data.color};font-size: ${data.fontSize}; padding: ${data.padding}; transform: ${data.transform}`
            }
        }
    }
</script>

<style scoped>
    .ValidCode {
        display: flex;
        justify-content: center;
    }
</style>