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
                component: () => import("@/views/User")
            },
            {
                path: '/product',
                name: 'Product',
                component: () => import("@/views/Product")
            },
            {
                path: '/personal',
                name: 'Personal',
                component: () => import("@/views/Personal")
            },
            {
                path: '/content',
                name: 'Content',
                component: () => import("@/views/Content")
            },
            {
                path: '/order',
                name: 'Order',
                component: () => import("@/views/Order")
            },
            {
                path: '/highCharts',
                name: 'HighCharts',
                component: () => import("@/views/HighCharts")
            },
        ]
    },
    {
        path: '/login',
        name: 'Login',
        component: () => import("@/views/Login")
    },
    {
        path: '/register',
        name: 'Register',
        component: () => import("@/views/Register")
    }
];

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
});

export default router
