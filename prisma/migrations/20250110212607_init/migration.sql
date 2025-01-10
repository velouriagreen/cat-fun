/*
  Warnings:

  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Breed" (
    "id" TEXT NOT NULL,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "Breed_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cat" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Cat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BreedsOnCats" (
    "catId" INTEGER NOT NULL,
    "breedId" TEXT NOT NULL,

    CONSTRAINT "BreedsOnCats_pkey" PRIMARY KEY ("catId","breedId")
);

-- AddForeignKey
ALTER TABLE "BreedsOnCats" ADD CONSTRAINT "BreedsOnCats_catId_fkey" FOREIGN KEY ("catId") REFERENCES "Cat"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BreedsOnCats" ADD CONSTRAINT "BreedsOnCats_breedId_fkey" FOREIGN KEY ("breedId") REFERENCES "Breed"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
