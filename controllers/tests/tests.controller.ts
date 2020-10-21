import { Test } from './../../models/quizModel/index.ts';
import { MyHook } from './../../middlewares/middleware.ts';
import { Controller, Param, Get, UseHook } from "../../deps/deps.ts";

@Controller("/test") // or specific path @Controller("/home")
export class TestsController {
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