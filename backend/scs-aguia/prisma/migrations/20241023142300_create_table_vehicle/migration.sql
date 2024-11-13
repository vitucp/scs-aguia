-- CreateTable
CREATE TABLE "vehicle" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nomenclature" TEXT NOT NULL,
    "model" TEXT NOT NULL,
    "yearOfManufacture" TEXT NOT NULL,
    "averageConsumption" TEXT NOT NULL,
    "tankCapacity" TEXT NOT NULL,
    "passengerCapacity" TEXT NOT NULL,
    "platePrefix" TEXT NOT NULL,
    "odometer" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "qr_code" TEXT NOT NULL,
    "img_vehicle" TEXT NOT NULL
);
