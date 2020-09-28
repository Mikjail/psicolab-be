import { MyHook } from './../../middlewares/middleware.ts';
import { Body, Controller, Post, UseHook, Context, Res } from "../../deps/deps.ts"
import {  Result, PostResult } from '../../models/quizModel/index.ts';

@Controller("/results") // or specific path @Controller("/home")
export class ResultsController {
    
  @UseHook(MyHook, 'payload')
    @Post('/save') // or specific path @Get("/hello")
    async getQuestions(@Body() body: Array<PostResult>, @Res() res: any) {
      try {
        const results = body.map( result => (
          {
            ...result,
            userId: res.result.userId
          })
          )
        if(results){
          await Result.create(results as any);  
        }
      } catch (error) {
        return error
      }
    }
}