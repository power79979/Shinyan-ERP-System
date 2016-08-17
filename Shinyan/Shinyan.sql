create database shinyan
use shinyan

#drop table product
CREATE TABLE `shinyan`.`product` (
  `p_id` NVARCHAR(20) NOT NULL, 	# '商品代碼, SKU',
  `name` NVARCHAR(100) NOT NULL, 	# '產品名稱',
  `spec` NVARCHAR(45), 	 			# '規格',
  `color` NVARCHAR(45), 	 		# '顏色',
  `owner` NVARCHAR(20), 	 		# 'Owner',
  `product_type` NVARCHAR(50),		# 產品類型 
  `price` FLOAT NOT NULL, 			# '價格',
  `invoice_name` NVARCHAR(45), 	 	# 'INOVICE商品名稱',
  `invoice_price` FLOAT, 	 		# 'INVOICE商品價格',
  `min_qty` INT, 	 				# '安全庫存數',
  `status` BIT NULL DEFAULT 1,		# '銷售狀態', 上架/下架
  `brand` NVARCHAR(80),	 			# '廠牌',
  `sub_brand` NVARCHAR(80),	 		# '副廠牌',
  `EAN` NVARCHAR(80),	 			# 'EAN',
  `product_code` NVARCHAR(80),	 	# 'product code',
  `comment` NVARCHAR(500),	 		# '備註',
  `weight` float,	 				# '重量(g)',
  `wrapping_material` NVARCHAR(50),	# '適用包材',
  `volume` float,					# '材積',  
  `volume_weight` float,			# '材積重',
  `category_id` INT,				#  分類	
  `stock_qty` int,					#  庫存量
  PRIMARY KEY (`p_id`),
  UNIQUE INDEX `p_id_UNIQUE` (`p_id` ASC),
  FOREIGN KEY(category_id) REFERENCES category(c_id)
  ON DELETE SET NULL
  );
  
#  select * from product
  
#drop table stock_change
CREATE TABLE `shinyan`.`stock_change` (
  `s_id` INT NOT NULL AUTO_INCREMENT,					#id pk
  `p_id` NVARCHAR(20) NOT NULL,							#fk to product.p_id
  `alt_type` BIT, 										#異動種類: 1 = 進貨, 0 = 出貨, null = 其他'
  `alt_qty` INT NOT NULL,								#異動數量
  `date` DATETIME DEFAULT Now(),						#異動日期
  `cost` FLOAT,											#成本
  `warehouse_loc` NVARCHAR(10),							#倉別
  `storage_loc` NVARCHAR(10),							#儲位
  `comment` NVARCHAR(200),								#備註
  PRIMARY KEY (`s_id`),
  FOREIGN KEY (`p_id`) REFERENCES `shinyan`.`product` (`p_id`)
  ON DELETE CASCADE
  );
    
  select * from stock_change
  
#drop table category
CREATE TABLE `shinyan`.`category` (
	`c_id` INT AUTO_INCREMENT PRIMARY KEY,
    `category_l` NVARCHAR(20), 	 	# '分類 大項',
	`category_m` NVARCHAR(20), 	 	# '分類 中項',
	`category_s` NVARCHAR(20) 	 	# '分類 小項',	
	);
    
    
#drop table combined_product
CREATE TABLE `shinyan`.`combined_product` (
	`cp_id` NVARCHAR(20) PRIMARY KEY, #pk 商品編號 SKU
	`category_id` INT,				#  分類	
	`name` NVARCHAR(200) 	 		# '品名',	    
	);   
    
#drop table com_prod_detail
CREATE TABLE `shinyan`.`com_prod_detail` (
	`cpd_id` INT AUTO_INCREMENT PRIMARY KEY, #pk 
	`cp_id` NVARCHAR(20),				#  combined_product id	
	`p_id` NVARCHAR(20), 				#  product id	  
    
    FOREIGN KEY(cp_id) REFERENCES combined_product(cp_id),
	FOREIGN KEY(p_id) REFERENCES product(p_id)
	ON DELETE CASCADE
	);   