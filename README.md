# Bike_Shop Databases

- [Bike\_Shop Databases](#bike_shop-databases)
  - [Introduction](#introduction)
  - [Querys](#querys)
  - [Details](#details)

## Introduction

In this tasque we will create five scripts that will be used to create a database and populate it with data.
The scripts will be created in the following order:

1. Create the database
2. Create the tables
3. Insert data into the tables
4. Delete data from the tables
5. Delete the tables

This database is based on a diagram previously used for datas bicycles. This is the diagram:

![](img\database_bikes.drawio.png)

We will have 6 tables where each one will be related to each other. The tables will be:

- Bikes
- Shops
- Bike_complements
- Complements
- Booking
- Client

## Querys

The querys that we will use to create the database are the following:

**Select all clients with name starting with "V"**

![](img\Screenshot_1.png)


**Select all bikes with a price higher than 8000**

![](img\Screenshot_2.png)

**Select all clients with mail ending with "gmail.com"**

![](img\Screenshot_3.png)

**Select all shops with order descending by name**

![](img\Screenshot_4.png)


**Select the minimum price of all the bikes and give the table a name called 'smallestPrice'**

![](img\Screenshot_5.png)

**Select all bikes with a brand Specialized and a price higher than 9000**

![](img\Screenshot_6.png)


**Select all bikes with price between 5000 and 9000**

![](img\Screenshot_7.png)

**Select average price of all the bikes**

![](img\Screenshot_8.png)

**Select with a join the tables "bikes", "shops" and "booking", to obtain information related between them**

![](img\Screenshot_10.png)


**Select how many times a store is repeated in the table "client"**

![](img\Screenshot_11.png)

## Details

Some details to keep in mind:

- In the **'drop.sql'** file we use the method *SET FOREIGN_KEY_CHECKS = 0;* to deactivate the foreign keys and thus be able to eliminate the tables.

- In the **'complement'** table, each id is accompanied by the description of its complement, in this way we have a more consistent table to relate to the others, since booleans or arrays cannot be used.

- The 5 words that are part of the nomenclature of a good database creation script have been used, which are: **UNIQUE, AUTO_INCREMENT, PRIMARY KEY, IF NOT EXISTS, CHECK** and **NOT NULL**.