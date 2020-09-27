import { Context, validateJwt, Status, Content } from "../deps/deps.ts";

export const JwtConfig = {
  header: "Authorization",
  schema: "Bearer",
	// use Env variable
  secretKey: Deno.env.get("SECRET") || "",
  expirationTime: 60000,
  type: "JWT",
  algorithm: "HS256"
};

export async function jwtAuth( ctx: Context<any>): Promise<boolean> {
    return new Promise( async(resolve, reject) => {
      // Get the token from the request
      const token = ctx.request.headers
        .get(JwtConfig.header)
        ?.replace(`${JwtConfig.schema} `, "");
      
      // reject request if token was not provide
      if (!token) {
        resolve(false);
        return;
      }

      // check the validity of the token
      const validatedJwt = await validateJwt({ jwt: token, key: JwtConfig.secretKey,  algorithm: "HS256"})
      
      if(!validatedJwt.isValid){
        resolve(false);
        return;
      }

      resolve(true);
    })
  }