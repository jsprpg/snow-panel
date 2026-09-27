import { createRouter, createWebHistory } from 'vue-router';
import CreateAccount from './pages/acceuil/create_accounts.vue';
import base from './App.vue';

const routes = [

    { path: '/create_accounts', component: CreateAccount },
];
const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;