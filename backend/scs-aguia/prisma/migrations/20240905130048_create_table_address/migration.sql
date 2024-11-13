/*
  Warnings:

  - You are about to drop the column `lestname` on the `users` table. All the data in the column will be lost.

*/
-- CreateTable
CREATE TABLE "addresses" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "street" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "zipCode" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "addresses_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_users" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "warOfName" TEXT,
    "graduation" TEXT,
    "session" TEXT,
    "name" TEXT,
    "lastName" TEXT,
    "email" TEXT,
    "password" TEXT,
    "whatsapp" TEXT,
    "tel1" TEXT,
    "cpf" TEXT,
    "rg" TEXT,
    "idtMilitary" TEXT,
    "sex" TEXT,
    "status" TEXT,
    "assignment" TEXT
);
INSERT INTO "new_users" ("assignment", "cpf", "email", "graduation", "id", "idtMilitary", "name", "password", "rg", "session", "sex", "status", "tel1", "warOfName", "whatsapp") SELECT "assignment", "cpf", "email", "graduation", "id", "idtMilitary", "name", "password", "rg", "session", "sex", "status", "tel1", "warOfName", "whatsapp" FROM "users";
DROP TABLE "users";
ALTER TABLE "new_users" RENAME TO "users";
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
CREATE UNIQUE INDEX "users_whatsapp_key" ON "users"("whatsapp");
CREATE UNIQUE INDEX "users_cpf_key" ON "users"("cpf");
CREATE UNIQUE INDEX "users_rg_key" ON "users"("rg");
CREATE UNIQUE INDEX "users_idtMilitary_key" ON "users"("idtMilitary");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;

-- CreateIndex
CREATE UNIQUE INDEX "addresses_userId_key" ON "addresses"("userId");
