<template>
    <div>
        <h1>snow</h1>
        <h2>formulaire de connexion</h2>
        <input type="text" placeholder="nom d'utilisateur">
        <input type="password" placeholder="mot de passe">
        <button>Se connecter</button>
        <button @click="createAccount">Créer un compte</button>
        <button @click="a">create db</button>
        <button @click="createTestAccount">create test account</button>
    </div>
</template>

<script setup>
    import { ref } from 'vue';

    async function a() {
        console.log('create db');
        const res = await fetch("http://127.0.0.1:8000/test/db")
        const data = await res.json();
        console.log(data);
    }

    async function createAccount() {
        console.log('create account');
        const res = await fetch ("http://127.0.0.1:8000/test/create_account", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                username: "testuser",
                password: "testpassword"
            })
        });
        const data = await res.json();
        console.log(data);
    }
</script>

<style>

</style>