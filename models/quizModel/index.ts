import { Model, DataTypes, Relationships } from '../../deps/deps.ts';
import { User } from '../userModel/index.ts';

/**
 * Test Model
 *
 * @export
 * @class Test
 * @extends {Model}
 */
export class Test extends Model {
  static table = 'tests';
  static timestamps = true;
  static fields = {
    id: { primaryKey: true, autoIncrement: true, type: DataTypes.INTEGER },
    name: DataTypes.STRING,
  };
}

/**
 * Question Model
 *
 * @export
 * @class Question
 * @extends {Model}
 */
export class Question extends Model {
  static table = 'questions';

  static timestamps = true;

  static fields = {
    id: { primaryKey: true, autoIncrement: true, type: DataTypes.INTEGER },
    points: DataTypes.FLOAT,
    description: DataTypes.TEXT,
    correctAnswer: DataTypes.STRING,
  };

  static answers() {
    return this.hasMany(Answer);
  }
}

/**
 * Answer Model
 *
 * @export
 * @class Answer
 * @extends {Model}
 */
export class Answer extends Model {
  static table = 'answers';
  static timestamps = true;
  static fields = {
    id: { primaryKey: true, autoIncrement: true },
    sequence: DataTypes.INTEGER,
    text: DataTypes.STRING,
  };

  static question() {
    return this.hasOne(Question);
  }
}

/**
 * Test Results
 *
 * @export
 * @class Result
 * @extends {Model}
 */
export class Result extends Model {
  static table = 'results';
  static timestamps = true;
  static fields = {
    id: { primaryKey: true, autoIncrement: true },
  };

  static users() {
    return this.hasMany(User);
  }

  static questions() {
    return this.hasMany(Question);
  }
}

/**
 * Assigned Test Model
 *
 * @export
 * @class AssignedTest
 * @extends {Model}
 */
export class AssignedTest extends Model {
  static table = 'assignedtests';
  static timestamps = true;
  static fields = {
    id: { primaryKey: true, autoIncrement: true },
  };
}

export interface PostResult {
  id: number;
  userId: string;
  questionId: string;
  answerId: string;
  testId: string;
}

/**
 *  RELATIONS
 */

// Question
Relationships.belongsTo(Question, Test);
// Answer
Relationships.belongsTo(Answer, Question);
Relationships.belongsTo(Answer, Test);
// Result
Relationships.belongsTo(Result, User);
Relationships.belongsTo(Result, Question);
Relationships.belongsTo(Result, Answer);
// AssignedTest
Relationships.belongsTo(AssignedTest, User);
Relationships.belongsTo(AssignedTest, Test);
