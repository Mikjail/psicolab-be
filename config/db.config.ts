import { User } from './../models/userModel/index.ts';
import { Question, Answer,  Test, Result} from '../models/quizModel/index.ts';
// Database.ts
import { Database } from "https://deno.land/x/denodb/mod.ts";

export class DB {
  client: Database;

	/**
   * Initialise database client
   */
  constructor() {
    this.client =  new Database('postgres', {
      host: 'localhost',
      port: 5432,
      database: 'psicolab',
      username: 'postgres',
      password: 'm64ever'
    });
  }

  /**
   * Initialise models
   */
  async initModels() {
    await this.client.link([ Test, Question, Answer, User, Result]);
    
  }
}