<template>
    <div>
        <el-menu
                default-active="user"
                :default-openeds="[1]"
                class="el-menu-vertical-demo"
                style="width: 200px;min-height: calc(100vh - 50px)">
            <el-sub-menu index="1">
                <template #title>系统管理</template>
                <el-menu-item index="user" :route="{path: '/'}">用户管理</el-menu-item>
            </el-sub-menu>
            <el-menu-item index="data" :route="{path: '/'}">数据管理</el-menu-item>
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
        name: "Aside"
    }
</script>

<style scoped>

</style>