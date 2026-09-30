import { createRouter, createWebHistory } from 'vue-router';
import CreateAccount from './pages/acceuil/create_accounts.vue';
import bienvenue from './pages/acceuil/bienvenue.vue';
import down from './pages/error/down.vue';

const routes = [
    { path: '/bienvenue', component: bienvenue },
    { path: '/create_accounts', component: CreateAccount },
    { path: '/down', component: down }
];
const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;