import { Model, DataTypes, Relationships } from 'https://deno.land/x/denodb/mod.ts';

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
    "test_id": Relationships.belongsTo(Test),
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
    "sequence" : DataTypes.INTEGER,
    "answer": DataTypes.STRING,
    "question_id" : Relationships.belongsTo(Question),
    "test_id" :   Relationships.belongsTo(Test)
  }

  static question(){
    return this.hasOne(Question);
  }
}
