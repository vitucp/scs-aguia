/*
  Warnings:

  - A unique constraint covering the columns `[whatsapp]` on the table `users` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "users_whatsapp_key" ON "users"("whatsapp");
