from fastapi import FastAPI
from fastapi.responses import JSONResponse


api = FastAPI()

@api.get("/")
def index():
  return JSONResponse(content={"hello": "world!!"}, status_code=200)
