use u0825580_programmistru;
CREATE TABLE Products (
	id int NOT NULL IDENTITY, CONSTRAINT PK_ProdId PRIMARY KEY CLUSTERED (id),
    Name nvarchar(max), 
);

CREATE TABLE Category (
	id int NOT NULL IDENTITY, CONSTRAINT PK_CatId PRIMARY KEY CLUSTERED (id),
    Name nvarchar(max), 
);

/*DROP TABLE Products */

CREATE TABLE CatProd(
 idProd int,
 idCat int
);

INSERT Products(Name) VALUES ('Продукт1');
INSERT Products (Name)  VALUES ('Продукт2');
INSERT Products (Name)  VALUES ('Продукт3');
INSERT Products (Name)  VALUES ('Продукт4');
INSERT Products (Name)  VALUES ('Продукт5');
INSERT Products (Name)  VALUES ('Продукт6');
INSERT Products (Name)  VALUES ('Продукт7');
INSERT Category (Name)  VALUES ('Категория1');
INSERT Category (Name)  VALUES ('Категория2');
INSERT Category (Name)  VALUES ('Категория3');
INSERT Category (Name)  VALUES ('Категория4');
INSERT Category (Name)  VALUES ('Категория5');
INSERT CatProd(idProd,idCat ) VALUES (1,2);
INSERT CatProd(idProd,idCat ) VALUES (1,3);
INSERT CatProd(idProd,idCat ) VALUES (1,1);
INSERT CatProd(idProd,idCat ) VALUES (2,1);
INSERT CatProd(idProd,idCat ) VALUES (2,2);
INSERT CatProd(idProd,idCat ) VALUES (4,1);
INSERT CatProd(idProd,idCat ) VALUES (5,3);
SELECT  pr.Name, cat.Name
FROM Products pr
LEFT JOIN CatProd catpr
ON pr.id = catpr.idProd
LEFT JOIN  Category cat
ON catpr.idCat = cat.id