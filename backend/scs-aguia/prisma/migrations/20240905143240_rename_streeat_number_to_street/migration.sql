/*
  Warnings:

  - You are about to drop the column `streeatNumber` on the `addresses` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_addresses" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "street" TEXT,
    "city" TEXT,
    "zipCode" TEXT,
    "streetNumber" TEXT,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "addresses_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_addresses" ("city", "id", "street", "userId", "zipCode") SELECT "city", "id", "street", "userId", "zipCode" FROM "addresses";
DROP TABLE "addresses";
ALTER TABLE "new_addresses" RENAME TO "addresses";
CREATE UNIQUE INDEX "addresses_userId_key" ON "addresses"("userId");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;