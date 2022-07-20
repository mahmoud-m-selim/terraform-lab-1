resource "aws_elasticache_cluster" "example" {
  cluster_id           = "ms-cluster-example"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"
  engine_version       = "3.2.10"
  port                 = 6379
}