<template>
    <div>
        <h1 id="bienvenue">Bienvenue</h1>
    </div>
</template>

<style> 
    #bienvenue {
        text-align: center;
        margin-top: 20px;
        animation: slideIn 1s ease-in-out;
    }

    @keyframes slideIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>