from fastapi import FastAPI

app = FastAPI()


## user routes
@app.get("/server/ressources/cpu/pourcent/{server_id}", tags=["user"])
async def get_cpu_usage(server_id: str):
    return {"server_id": server_id, "cpu_usage": "75%"}

@app.get("/server/ressources/cpu/coeur/{server_id}" , tags=["user"])
async def get_cpu_cores(server_id: str):
    return {"server_id": server_id, "cpu_cores": 8}

@app.get("/server/ressources/cpu/frequence/{server_id}", tags=["user"])
async def get_cpu_frequency(server_id: str):
    return {"server_id": server_id, "cpu_frequency": "3.2 GHz"}

@app.get("/server/ressources/memory/pourcent/{server_id}", tags=["user"])
async def get_memory_usage(server_id: str):
    return {"server_id": server_id, "memory_usage": "60%"}

@app.get("/server/ressources/memory/taille/{server_id}", tags=["user"])
async def get_memory_size(server_id: str):
    return {"server_id": server_id, "memory_size": "16 GB"}

@app.get("/server/ressources/memory/utilisee/{server_id}", tags=["user"])
async def get_memory_used(server_id: str):
    return {"server_id": server_id, "memory_used": "9.6 GB"}

@app.get("/server/ressources/disk/pourcent/{server_id}", tags=["user"])
async def get_disk_usage(server_id: str):
    return {"server_id": server_id, "disk_usage": "80%"}

@app.get("/server/ressources/network/pourcent/{server_id}", tags=["user"])
async def get_network_usage(server_id: str):
    return {"server_id": server_id, "network_usage": "50%"}







## login private routes
@app.get("/login/form/user/{user_name}", tags=["login"])
async def get_user_login_form(user_name: str):
    return {"user_name": user_name, "login_form": "Login form for user"}

@app.get("/login/form/mdp/{user_mdp}", tags=["login"])
async def get_user_password_form(user_mdp: str):
    return {"user_mdp": user_mdp, "password_form": "Password form for user"}