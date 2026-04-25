SELECT sup_name, prod_name, qty
From Tbl_Suppliers S
JOIN Tbl_Products P ON S.sup_id = P.sup_id
JOIN Tbl_Orders O ON P.prod_id = O.prod_id;