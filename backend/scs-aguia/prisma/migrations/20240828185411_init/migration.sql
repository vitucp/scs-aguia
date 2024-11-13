-- CreateTable
CREATE TABLE "users" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "warOfName" TEXT,
    "graduation" TEXT,
    "session" TEXT,
    "name" TEXT,
    "lestname" TEXT,
    "email" TEXT,
    "password" TEXT,
    "whatsapp" TEXT,
    "tel1" TEXT,
    "cpf" TEXT,
    "rg" TEXT,
    "sex" TEXT,
    "status" TEXT,
    "assignment" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
