import { createRouter, createWebHistory } from 'vue-router';
import CreateAccount from './pages/acceuil/create_accounts.vue';
import bienvenue from './pages/acceuil/bienvenue.vue';
import down from './pages/error/down.vue';
import menu from './pages/server/menu.vue';
    
const routes = [
    { path: '/bienvenue', component: bienvenue },
    { path: '/create_accounts', component: CreateAccount },
    { path: '/down', component: down },
    { path: '/menu', component: menu }
];
const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;