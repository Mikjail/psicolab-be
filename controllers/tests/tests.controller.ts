import { Test, PostResult, AssignedTest } from './../../models/quizModel/index.ts';
import { MyHook } from './../../middlewares/middleware.ts';
import { Controller, Param, Get, UseHook, Res } from "../../deps/deps.ts";
import { User } from "../../models/userModel/index.ts";

@Controller("/test") // or specific path @Controller("/home")
export class TestsController {
    @UseHook(MyHook, 'payload')
    @Get() // or specific path @Get("/hello")
    async getTests(@Res() res: any)  {
      try {
        const { userId } = res.result;
        
        const tests = await AssignedTest.select('tests.id', 'tests.name')
        .where('user_id', userId)
        .join(Test, Test.field('id'), AssignedTest.field('test_id')).all();
        
        return tests;
      } catch (error) {
        return {}
      }
    }
    @UseHook(MyHook, 'payload')
    @Get('/:testId/points') // or specific path @Get("/hello")
    async setResult(@Param('testId') testId: string) {
      try {
        const testPoints = Test.where(Test.field('id')).all();
        return testPoints;
      } catch (error) {
        return {}
      }
    }
  }