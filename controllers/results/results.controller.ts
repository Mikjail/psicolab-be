import { MyHook } from './../../middlewares/middleware.ts';
import { Body, Controller, Post, UseHook, Context, Res } from "../../deps/deps.ts"
import {  Result, PostResult } from '../../models/quizModel/index.ts';

@Controller("/results") // or specific path @Controller("/home")
export class ResultsController {
    
  @UseHook(MyHook, 'payload')
    @Post('/save') // or specific path @Get("/hello")
    async getQuestions(@Body() body: PostResult, @Res() res: any) {
      try {
        const { userId } = res.result;

        const { questionId, testId } = body;
        
        const whereQuery = { 
          userId,
          questionId,
          testId
        }

        const questionAnswered = await Result.where(whereQuery).all();
        
        if(questionAnswered.length > 0){
          await Result.where(whereQuery).update({...body } as any);
        } else {
          await Result.create({...body, userId: res.result.userId } as any);  
        }
        return await Result.where(whereQuery).all();
      } catch (error) {
        return error
      }
    }
}