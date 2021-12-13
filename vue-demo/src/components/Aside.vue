<template>
    <div>
        <!--        通过 router+index属性 进行对应的路由；default-active选中高亮，：为变量-->
        <el-menu
                :default-active="path"
                :default-openeds="[1]"
                router
                class="el-menu-vertical-demo"
                style="width: 200px;min-height: calc(100vh - 50px)">
            <el-sub-menu index="1">
                <template #title>系统管理</template>
                <el-menu-item index="/user">用户管理</el-menu-item>
            </el-sub-menu>
            <el-menu-item index="/product">商品管理</el-menu-item>
            <!--            <el-menu-item index="2">-->
            <!--                <span>一级菜单</span>-->
            <!--            </el-menu-item>-->
            <!--            <el-menu-item index="3">-->
            <!--                <span>一级菜单</span>-->
            <!--            </el-menu-item>-->
            <!--            <el-menu-item index="4">-->
            <!--                <span>一级菜单</span>-->
            <!--            </el-menu-item>-->
        </el-menu>
    </div>
</template>

<script>
    export default {
        name: "Aside",
        data() {
            return {
                path: this.$route.path
            }
        }
    }
</script>

<style scoped>

</style>