import { Area } from "../../deps/deps.ts";
import { UserController } from './users.controller.ts';

@Area({
  baseRoute: '/api',
  controllers: [UserController],
})
export class UsersArea {}