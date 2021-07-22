import { User } from './../models/userModel/index.ts';
import { Question, Answer, Test, Result, AssignedTest } from '../models/quizModel/index.ts';
// Database.ts
import { Database, PostgresConnector } from 'https://deno.land/x/denodb/mod.ts';

export class DB {
  db: Database;

  /**
   * Initialize database
   */
  constructor() {
    const connector = new PostgresConnector({
      host: 'localhost',
      port: 5432,
      database: 'psicolab',
      username: 'postgres',
      password: 'm64ever',
    });
    this.db = new Database(connector);
  }

  /**
   * Initialize models
   */
  async initModels() {
    await this.db.link([Test, Question, Answer, User, Result, AssignedTest]);
  }
}
