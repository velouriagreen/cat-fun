import { Module } from '@nestjs/common';
import { CatsController } from './cats.controller';
import { Cats } from './cats';

@Module({
  controllers: [CatsController],
  providers: [Cats]
})
export class CatsModule {}
