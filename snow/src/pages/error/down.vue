<template>
    <div class="bg">
        <span class="blob b1"></span>
        <span class="blob b2"></span>
        <span class="blob b3"></span>
        <span class="blob b4"></span>
    </div>
</template>

<style>
    html, body {
  margin: 0;
  height: 100%;
}

.bg {
  position: fixed;
  inset: 0;
  overflow: hidden;
  background: #041b4b;  
  z-index: -1;
}

.blob {
  position: absolute;
  width: 50vmax;
  height: 50vmax;
  border-radius: 50%;
  filter: blur(60px);
  opacity: 0.7;
  will-change: transform;
}

.b1 {
  background: radial-gradient(circle, #3b82f6 0%, transparent 70%);
  top: -10%; left: -10%;
  animation: move1 18s ease-in-out infinite alternate;
}
.b2 {
  background: radial-gradient(circle, #3b82f6 0%, transparent 70%);
  top: 40%; right: -15%;
  animation: move2 23s ease-in-out infinite alternate;
}
.b3 {
  background: radial-gradient(circle, #3b82f6 0%, transparent 70%);
  bottom: -20%; left: 20%;
  animation: move3 27s ease-in-out infinite alternate;
}
.b4 {
  background: radial-gradient(circle, #3b82f6 0%, transparent 70%);
  top: 20%; left: 40%;
  animation: move4 31s ease-in-out infinite alternate;
}

@keyframes move1 {
  0%   { transform: translate(0, 0) scale(1); }
  33%  { transform: translate(40vw, 20vh) scale(1.2); }
  66%  { transform: translate(15vw, 50vh) scale(0.9); }
  100% { transform: translate(60vw, 10vh) scale(1.1); }
}
@keyframes move2 {
  0%   { transform: translate(0, 0) scale(1); }
  40%  { transform: translate(-50vw, -30vh) scale(1.3); }
  100% { transform: translate(-20vw, 20vh) scale(0.8); }
}
@keyframes move3 {
  0%   { transform: translate(0, 0) scale(1.1); }
  50%  { transform: translate(30vw, -40vh) scale(0.9); }
  100% { transform: translate(-25vw, -20vh) scale(1.3); }
}
@keyframes move4 {
  0%   { transform: translate(0, 0) scale(0.9); }
  30%  { transform: translate(-30vw, 30vh) scale(1.2); }
  70%  { transform: translate(25vw, -20vh) scale(1); }
  100% { transform: translate(-10vw, -35vh) scale(1.25); }
}

</style>