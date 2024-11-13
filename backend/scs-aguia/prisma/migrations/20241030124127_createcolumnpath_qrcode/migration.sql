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
    "pathQr_Code" TEXT,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "seal_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_seal" ("categorieCnh", "chassi", "cnh", "color", "id", "ipva", "nSeal", "pathDocuments", "pathQr_Code", "plate", "renavam", "userId", "validityCnh", "vehicleModel", "yearOfManufacture") SELECT "categorieCnh", "chassi", "cnh", "color", "id", "ipva", "nSeal", "pathDocuments", "pathQr_Code", "plate", "renavam", "userId", "validityCnh", "vehicleModel", "yearOfManufacture" FROM "seal";
DROP TABLE "seal";
ALTER TABLE "new_seal" RENAME TO "seal";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
