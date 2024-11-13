/*
  Warnings:

  - You are about to drop the `_UserToseal` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `userId` to the `seal` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "_UserToseal_B_index";

-- DropIndex
DROP INDEX "_UserToseal_AB_unique";

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "_UserToseal";
PRAGMA foreign_keys=on;

-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_seal" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "cnh" TEXT NOT NULL,
    "categorieCnh" TEXT NOT NULL,
    "validityCnh" TEXT NOT NULL,
    "vehicleModel" TEXT NOT NULL,
    "chassi" TEXT NOT NULL,
    "yearOfManufacture" TEXT NOT NULL,
    "ipva" TEXT NOT NULL,
    "renavam" TEXT NOT NULL,
    "plate" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "nSeal" TEXT NOT NULL,
    "pathDocuments" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "seal_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_seal" ("categorieCnh", "chassi", "cnh", "color", "id", "ipva", "nSeal", "pathDocuments", "plate", "renavam", "validityCnh", "vehicleModel", "yearOfManufacture") SELECT "categorieCnh", "chassi", "cnh", "color", "id", "ipva", "nSeal", "pathDocuments", "plate", "renavam", "validityCnh", "vehicleModel", "yearOfManufacture" FROM "seal";
DROP TABLE "seal";
ALTER TABLE "new_seal" RENAME TO "seal";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
