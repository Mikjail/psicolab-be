import { MyHook } from './../../middlewares/middleware.ts';
import { Body, Controller, Post, UseHook, QueryParam, Res, Get, Param } from "../../deps/deps.ts"
import {  Result, PostResult, Question, Answer } from '../../models/quizModel/index.ts';

@Controller("/results") // or specific path @Controller("/home")
export class ResultsController {
    
  @UseHook(MyHook, 'payload')
    @Post('/save') // or specific path @Get("/hello")
    async setResult(@Body() body: PostResult, @Res() res: any) {
      try {
        const { userId } = res.result;

        const { questionId } = body;
        
        const whereQuery = { 
          userId,
          questionId
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

    @UseHook(MyHook, 'payload')
    @Get('') // or specific path @Get("/hello")
    async getFinalResults(@QueryParam('testId') testId: string, @Res() res: any){
      try {
          const { userId } = res.result;
          
          const whereQuery = { 
            userId,
            testId
          }
          
          const testResult = await Question.where(Question.field('test_id'), testId)
          .join(Result , Result.field('question_id'), Question.field('id'))
          .all();
          
          return testResult;
          
      } catch (error) {
        return error
      }
    }
}