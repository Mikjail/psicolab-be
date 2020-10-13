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

    @UseHook(MyHook, 'payload')
    @Get('') // or specific path @Get("/hello")
    async getResults(@QueryParam('testId') testId: string, @Res() res: any){
      try {
          const { userId } = res.result;
          
          const whereQuery = { 
            userId,
            testId
          }
  
          return await Result.where(whereQuery).all();

      } catch (error) {
        return error
      }
    }

    @UseHook(MyHook, 'payload')
    @Get('/finalResult') // or specific path @Get("/hello")
    async getFinalResults(@QueryParam('testId') testId: string, @Res() res: any){
      try {
          const { userId } = res.result;
          
          const whereQuery = { 
            userId,
            testId
          }
          const answers = await Answer.select('question_id', 'id').join(Question, Question.field('id'), Answer.field('question_id')).all();
          
          const testResult = await Result.where(Result.field('test_id'), testId)
          .join(Question , Question.field('id'), Result.field('question_id'))
          .all();
          
          return testResult;
          
      } catch (error) {
        return error
      }
    }
}