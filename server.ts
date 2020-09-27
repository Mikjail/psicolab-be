// import { JWTAuth } from './middlewares/middleware.ts';
import { App, CorsBuilder,Context, Content, HttpError } from "./deps/deps.ts";
import { QuestionsArea } from './controllers/questions/questions.area.ts';
import { UsersArea } from './controllers/users/users.area.ts';
import { DB } from './config/db.config.ts'

// Create alosaur application
const app = new App({
  areas: [QuestionsArea, UsersArea],
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