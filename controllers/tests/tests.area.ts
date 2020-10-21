import { TestsController } from './tests.controller.ts';
import { Area } from "../../deps/deps.ts";

@Area({
  baseRoute: '/api',
  controllers: [TestsController]
})
export class TestArea {}