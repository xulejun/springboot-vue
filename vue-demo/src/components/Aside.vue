<template>
    <div>
        <el-menu
                default-active="2"
                class="el-menu-vertical-demo"
                style="width: 200px;min-height: calc(100vh - 50px)">
            <el-sub-menu index="1">
                <template #title>
                    <span>一级菜单</span>
                </template>
                <el-sub-menu index="1-4">
                    <template #title>二级菜单</template>
                    <el-menu-item index="1-4-1">三级菜单</el-menu-item>
                </el-sub-menu>
            </el-sub-menu>
            <el-menu-item index="2">
                <span>一级菜单</span>
            </el-menu-item>
            <el-menu-item index="3">
                <span>一级菜单</span>
            </el-menu-item>
            <el-menu-item index="4">
                <span>一级菜单</span>
            </el-menu-item>
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