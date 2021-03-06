import { User, PostUser } from './../../models/userModel/index.ts';
import {
  Controller,
  Get,
  Post,
  Delete,
  Param,
  Put,
  Body,
  UnauthorizedError,
  Content,
} from '../../deps/deps.ts';
import { bcrypt } from '../../deps/deps.ts';

@Controller('/user')
export class UserController {
  @Post('/create')
  async create(@Body() values: PostUser) {
    try {
      // Call static user method
      const password = await User.hashPassword(values.password);

      const user: PostUser = {
        username: values.username,
        firstName: values.firstName,
        lastName: values.lastName,
        password,
      };

      await User.create(user as any);

      return values;
    } catch (error) {
      return error;
    }
  }

  @Delete('/delete')
  async delete(id: string) {
    await User.deleteById(id);
  }

  @Get('/')
  getAll() {
    return User.all();
  }

  @Get('/:id')
  getOne(@Param('id') id: string) {
    return User.where('id', id).first();
  }

  @Put('/:id')
  async update(@Param('id') id: string, values: PostUser) {
    await User.where('id', id).update(values as any);
    return this.getOne(id);
  }

  @Post('/login')
  async login(@Body() body: { username: string; password: string }) {
    const user = await User.where('username', body.username).first();
    if (!user || !(await bcrypt.compare(body.password, user.password as string))) {
      return Content('Invalid username/password', 401);
    }
    // Call our new static method
    return { jwt: await User.generateJwt(user.id as string) };
  }
}
