

import uuid
import bcrypt
from fastapi import Depends, HTTPException

from database import get_db
from models.user import User
from pydantic_schemes.user_create import UserCreate
from fastapi import APIRouter
from sqlalchemy.orm import Session

from pydantic_schemes.user_login import UserLogin

router = APIRouter()
@router.post('/signup')
def signup_user(user:UserCreate, db: Session=Depends(get_db)):  
    
    user_db = db.query(User).filter(User.email == user.email).first()
    
    if user_db:
        raise HTTPException(400,'user with the same email already exits'   )
  
    hashed_pw = bcrypt.hashpw(user.password.encode(),bcrypt.gensalt())
    user_db = User(id=str(uuid.uuid4()),email =user.email,password=hashed_pw,name = user.name)
    
    db.add(user_db)
    db.commit()
    db.refresh(user_db)
    
    return user_db

@router.post('/login')
def login_user(user:UserLogin, db: Session=Depends(get_db)):
    user_db = db.query(User).filter(User.email == user.email).first()
    
    if not user_db:
        raise HTTPException(400,"Usuario no existe con ese email")
    
    is_match = bcrypt.checkpw(user.password.encode(), user_db.password)

    if not is_match:
        raise HTTPException(400,"La contraseña no coincide")
    
    return user_db
