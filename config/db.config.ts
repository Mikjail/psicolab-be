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
      password: ''
    });
  }

  /**
   * Initialise models
   */
  async initModels() {

    this.client.link([ User ]);

    await this.client.sync({ drop:  true });
  
    await User.create({ 
      username: 'admin',
      password:  await User.hashPassword('admin')
    })

    await this.client.link([ Test, Question, Answer, User, Result]);
    
  }
}