import { App, CorsBuilder,Context, Content, HttpError } from "./deps/deps.ts";
import { ResultsArea } from './controllers/results/results.area.ts';
import { QuestionsArea } from './controllers/questions/questions.area.ts';
import { UsersArea } from './controllers/users/users.area.ts';
import { TestArea } from './controllers/tests/tests.area.ts';
import { DB } from './config/db.config.ts'

// Create alosaur application
const app = new App({
  areas: [QuestionsArea, UsersArea, ResultsArea, TestArea],
});

app.useCors(
  new CorsBuilder()
    .AllowAnyOrigin()
    .AllowAnyMethod()
    .AllowAnyHeader(),
);

// added global error handler
app.error((context: Context<any>, error: Error) => {
  context.response.result = Content("This page unprocessed error", (error as HttpError).httpCode || 500);
  context.response.setImmediately();
});

await new DB().initModels();


app.listen();