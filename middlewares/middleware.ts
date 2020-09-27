import { Context, getMetadataArgsStorage, HookTarget, container, Content } from "../deps/deps.ts";
import { jwtAuth } from "./jwt.ts";

type PayloadType = string; // can use any type for payload
type State = any;

export class MyHook implements HookTarget<State, PayloadType> {

  // this hook run before controller action
 async onPreAction(context: Context<State>, payload: PayloadType) {
      const isValid = await jwtAuth(context);
      // you can rewrite result and set request immediately
      if(!isValid){
        context.response.result = Content({error: {token: false}}, 403);
        context.response.setImmediately();      
      } 
  };
  
  // this hook run after controller action
  onPostAction(context: Context<State>, payload: PayloadType) {
    // you can filtered response result here
  };
  
  // this hook run only throw exception in controller action
  onCatchAction(context: Context<State>, payload: PayloadType) {
  
  };
}