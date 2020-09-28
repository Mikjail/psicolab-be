import { Model, DataTypes, Relationships } from '../../deps/deps.ts';
import { User } from "../userModel/index.ts";

export class Test extends Model {
  static table = 'tests';
  static timestamps = true;
  static fields = {
    "id": { primaryKey: true, autoIncrement: true, type: DataTypes.INTEGER },
    "name" : DataTypes.STRING,
  }
}

export class Question extends Model {
  static table = 'questions';
  
  static timestamps = true;
  
  static fields = {
    "id": { primaryKey: true, autoIncrement: true, type: DataTypes.INTEGER },
    "points": DataTypes.FLOAT,
    "testId": Relationships.belongsTo(Test),
    "description": DataTypes.TEXT,
    "correctAnswer":  DataTypes.STRING,
  }

  static answers() {
    return this.hasMany(Answer)
  }
}

export class Answer extends Model {
  static table = 'answers';
  static timestamps = true;
  static fields = {
    "id": { primaryKey: true, autoIncrement: true },
    "sequence": DataTypes.INTEGER,
    "answer": DataTypes.STRING,
    "questionId": Relationships.belongsTo(Question),
    "testId":   Relationships.belongsTo(Test)
  }

  static question(){
    return this.hasOne(Question);
  }
}

export class Result extends Model {
  static table = 'results';
  static timestamps = true;
  static fields = {
    "id": { primaryKey: true, autoIncrement: true },
    "userId": Relationships.belongsTo(User),
    "questionId": Relationships.belongsTo(Question),
    "answerId": Relationships.belongsTo(Answer)
  }

  static users() {
    return this.hasMany(User);
  }
}

export interface PostResult {
  questionId: string;
  answerSelected: string;
}