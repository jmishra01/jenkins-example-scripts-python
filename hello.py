from fastapi import FastAPI
from fastapi.response import JSONResponse


api = FastAPI()

@api.get("/")
def index():
  return JSONResponse(content={"hello": "world!!"}, status_code=200)
