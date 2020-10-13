import { MyHook } from './../../middlewares/middleware.ts';
import { Controller, Get, UseHook } from "../../deps/deps.ts"
import { questions } from "../../config/dbsample.ts";
import { Question, Answer } from '../../models/quizModel/index.ts';

@Controller("/questions") // or specific path @Controller("/home")
export class QuestionsController {
    
  @UseHook(MyHook, 'payload')
    @Get() // or specific path @Get("/hello")
    async getQuestions() {
      try {
        const answers = await Answer.select('question_id', 'answer', 'answers.id').join(Question, Question.field('id'), Answer.field('question_id')).all();
        const questions = await Question.select('id', 'description', 'test_id').all();
        const questionWithAnswer = questions.map( (question:any) => ({
          ...question,
          alternatives: answers
          .filter( (answer:any) => answer.questionId === question.id)
          .map( (answer:any) => ({ answer: answer.answer, id: answer.id}))
        }))
        
        return questionWithAnswer;  

      } catch (error) {
        return error
      }
    }

    @Get('/sample')
    getSampleQuestions() {
        return [...questions.values()];
    }
}