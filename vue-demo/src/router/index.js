import {createRouter, createWebHistory} from 'vue-router'
import Layout from '../layout/Layout.vue'

const routes = [
    {
        path: '/',
        name: 'Layout',
        component: Layout,
        redirect: '/user',
        children: [
            {
                path: 'user',
                name: 'User',
                component: () => import("@/views/User"),
                meta:{
                    title:'用户管理'
                }
            },
            {
                path: '/product',
                name: 'Product',
                component: () => import("@/views/Product"),
                meta:{
                    title:'商品管理'
                }
            },
            {
                path: '/personal',
                name: 'Personal',
                component: () => import("@/views/Personal"),
                meta:{
                    title:'个人信息'
                }
            },
            {
                path: '/content',
                name: 'Content',
                component: () => import("@/views/Content"),
                meta:{
                    title:'内容管理'
                }
            },
            {
                path: '/order',
                name: 'Order',
                component: () => import("@/views/Order"),
                meta:{
                    title:'订单管理'
                }
            },
            {
                path: '/highCharts',
                name: 'HighCharts',
                component: () => import("@/views/HighCharts"),
                meta:{
                    title:'可视化数据'
                }
            },
            {
                path: '/christmasTree',
                name: 'ChristmasTree',
                component: () => import("@/views/ChristmasTree"),
                meta:{
                    title:'圣诞树'
                }
            },
        ]
    },
    {
        path: '/login',
        name: 'Login',
        component: () => import("@/views/Login"),
        meta:{
            title:'用户登录'
        }
    },
    {
        path: '/register',
        name: 'Register',
        component: () => import("@/views/Register"),
        meta:{
            title:'用户注册'
        }
    }
];

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
});

// 对外暴露
export default router
