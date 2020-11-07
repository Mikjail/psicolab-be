import { JwtConfig } from './../../middlewares/jwt.ts';
import { Model, DATA_TYPES } from "https://deno.land/x/denodb/mod.ts";
import {
  makeJwt,
  setExpiration,
  Jose,
  Payload,
} from "https://deno.land/x/djwt/create.ts";
import * as bcrypt from "https://deno.land/x/bcrypt/mod.ts";

export interface PostUser {
  id?: string;
  username: string;
  firstName: string;
  lastName: string;
  password: string;
}

export class User extends Model {
  static table = "users";
  
  static timestamps = true;
  
  static fields = {
    id: {
      primaryKey: true,
      autoIncrement: true,
      type: DATA_TYPES.STRING,
    },
    firstName: {
      type: DATA_TYPES.STRING,
      allowNull: true,
    },
    lastName: {
      type: DATA_TYPES.STRING,
      allowNull: true,
    },
    location: {
      type: DATA_TYPES.STRING,
      allowNull: true,
    },
    password: {
      type: DATA_TYPES.TEXT,
    },
    username: {
      type: DATA_TYPES.STRING
    }
  };

  static async hashPassword(password: string) {
      const salt = await bcrypt.genSalt(8);
      return bcrypt.hash(password, salt);
  }

  static async generateJwt(id: string) {
    // Create the payload with the expiration date (token have an expiry date) and the id of current user (you can add that you want)
    const payload: Payload = {
      id,
      exp: setExpiration(JwtConfig.expirationTime),
    };
    const header: Jose = {
      alg: JwtConfig.algorithm as Jose["alg"],
      typ: JwtConfig.type,
    };

    // return the generated token
    return await makeJwt({ header, payload, key: JwtConfig.secretKey });
  }
}