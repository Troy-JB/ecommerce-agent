@echo off

REM Neo4j Admin导入命令
REM 适用于Neo4j 2025.02.0及更高版本
REM 生成时间: 2026-11-06 17:39:45

neo4j-admin database import full neo4j --overwrite-destination ^
  --nodes=Product="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\product_nodes.csv" ^
  --nodes=Category="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\category_nodes.csv" ^
  --nodes=Supplier="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\supplier_nodes.csv" ^
  --nodes=Customer="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\customer_nodes.csv" ^
  --nodes=Employee="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\employee_nodes.csv" ^
  --nodes=Shipper="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\shipper_nodes.csv" ^
  --nodes=Order="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\order_nodes.csv" ^
  --nodes=Review="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\review_nodes.csv" ^
  --relationships=BELONGS_TO="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\product_category_edges.csv" ^
  --relationships=SUPPLIED_BY="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\product_supplier_edges.csv" ^
  --relationships=PLACED="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\customer_order_edges.csv" ^
  --relationships=PROCESSED="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\employee_order_edges.csv" ^
  --relationships=SHIPPED_VIA="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\order_shipper_edges.csv" ^
  --relationships=CONTAINS="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\order_product_edges.csv" ^
  --relationships=REPORTS_TO="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\employee_reports_to_edges.csv" ^
  --relationships=WROTE="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\customer_review_edges.csv" ^
  --relationships=ABOUT="D:\PROJECT\ecommerce-agent\llm_backend\app\graphrag\origin_data\data\neo4j_admin\review_product_edges.csv" ^
  --delimiter="," ^
  --array-delimiter=";" ^
  --skip-bad-relationships=true ^
  --skip-duplicate-nodes=true
