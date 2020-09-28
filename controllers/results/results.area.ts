import { ResultsController } from './results.controller.ts';
import { Area } from "../../deps/deps.ts";

@Area({
  baseRoute: '/api',
  controllers: [ResultsController]
})
export class ResultsArea {}