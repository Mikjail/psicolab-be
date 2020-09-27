import { Area } from "../../deps/deps.ts";
import { QuestionsController } from './questions.controller.ts';

@Area({
  baseRoute: '/api',
  controllers: [QuestionsController]
})
export class QuestionsArea {}