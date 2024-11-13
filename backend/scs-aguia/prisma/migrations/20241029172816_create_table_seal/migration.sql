-- CreateTable
CREATE TABLE "seal" (
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
    "pathDocuments" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_UserToseal" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_UserToseal_A_fkey" FOREIGN KEY ("A") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_UserToseal_B_fkey" FOREIGN KEY ("B") REFERENCES "seal" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "_UserToseal_AB_unique" ON "_UserToseal"("A", "B");

-- CreateIndex
CREATE INDEX "_UserToseal_B_index" ON "_UserToseal"("B");
