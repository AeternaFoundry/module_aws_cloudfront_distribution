output "cloudfront_distributions_id" {
  description = "Map of id values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_distributions_aliases" {
  description = "Map of aliases values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.aliases if v.aliases != null && length(v.aliases) > 0 }
}
output "cloudfront_distributions_anycast_ip_list_id" {
  description = "Map of anycast_ip_list_id values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.anycast_ip_list_id if v.anycast_ip_list_id != null && length(v.anycast_ip_list_id) > 0 }
}
output "cloudfront_distributions_arn" {
  description = "Map of arn values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_distributions_cache_tag_config" {
  description = "Map of cache_tag_config values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.cache_tag_config) if v.cache_tag_config != null && length(v.cache_tag_config) > 0 }
}
output "cloudfront_distributions_caller_reference" {
  description = "Map of caller_reference values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.caller_reference if v.caller_reference != null && length(v.caller_reference) > 0 }
}
output "cloudfront_distributions_comment" {
  description = "Map of comment values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "cloudfront_distributions_connection_function_association" {
  description = "Map of connection_function_association values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.connection_function_association) if v.connection_function_association != null && length(v.connection_function_association) > 0 }
}
output "cloudfront_distributions_continuous_deployment_policy_id" {
  description = "Map of continuous_deployment_policy_id values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.continuous_deployment_policy_id if v.continuous_deployment_policy_id != null && length(v.continuous_deployment_policy_id) > 0 }
}
output "cloudfront_distributions_custom_error_response" {
  description = "Map of custom_error_response values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.custom_error_response if v.custom_error_response != null && length(v.custom_error_response) > 0 }
}
output "cloudfront_distributions_default_cache_behavior" {
  description = "Map of default_cache_behavior values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.default_cache_behavior) if v.default_cache_behavior != null && length(v.default_cache_behavior) > 0 }
}
output "cloudfront_distributions_default_root_object" {
  description = "Map of default_root_object values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.default_root_object if v.default_root_object != null && length(v.default_root_object) > 0 }
}
output "cloudfront_distributions_domain_name" {
  description = "Map of domain_name values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "cloudfront_distributions_enabled" {
  description = "Map of enabled values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.enabled if v.enabled != null }
}
output "cloudfront_distributions_etag" {
  description = "Map of etag values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfront_distributions_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "cloudfront_distributions_http_version" {
  description = "Map of http_version values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.http_version if v.http_version != null && length(v.http_version) > 0 }
}
output "cloudfront_distributions_in_progress_validation_batches" {
  description = "Map of in_progress_validation_batches values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.in_progress_validation_batches if v.in_progress_validation_batches != null }
}
output "cloudfront_distributions_is_ipv6_enabled" {
  description = "Map of is_ipv6_enabled values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.is_ipv6_enabled if v.is_ipv6_enabled != null }
}
output "cloudfront_distributions_last_modified_time" {
  description = "Map of last_modified_time values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.last_modified_time if v.last_modified_time != null && length(v.last_modified_time) > 0 }
}
output "cloudfront_distributions_logging_config" {
  description = "Map of logging_config values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.logging_config) if v.logging_config != null && length(v.logging_config) > 0 }
}
output "cloudfront_distributions_logging_v1_enabled" {
  description = "Map of logging_v1_enabled values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.logging_v1_enabled if v.logging_v1_enabled != null }
}
output "cloudfront_distributions_ordered_cache_behavior" {
  description = "Map of ordered_cache_behavior values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.ordered_cache_behavior if v.ordered_cache_behavior != null && length(v.ordered_cache_behavior) > 0 }
}
output "cloudfront_distributions_origin" {
  description = "Map of origin values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "cloudfront_distributions_origin_group" {
  description = "Map of origin_group values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.origin_group if v.origin_group != null && length(v.origin_group) > 0 }
}
output "cloudfront_distributions_price_class" {
  description = "Map of price_class values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.price_class if v.price_class != null && length(v.price_class) > 0 }
}
output "cloudfront_distributions_restrictions" {
  description = "Map of restrictions values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.restrictions) if v.restrictions != null && length(v.restrictions) > 0 }
}
output "cloudfront_distributions_retain_on_delete" {
  description = "Map of retain_on_delete values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.retain_on_delete if v.retain_on_delete != null }
}
output "cloudfront_distributions_staging" {
  description = "Map of staging values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.staging if v.staging != null }
}
output "cloudfront_distributions_status" {
  description = "Map of status values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloudfront_distributions_tags" {
  description = "Map of tags values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudfront_distributions_tags_all" {
  description = "Map of tags_all values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cloudfront_distributions_trusted_key_groups" {
  description = "Map of trusted_key_groups values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.trusted_key_groups if v.trusted_key_groups != null && length(v.trusted_key_groups) > 0 }
}
output "cloudfront_distributions_trusted_signers" {
  description = "Map of trusted_signers values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.trusted_signers if v.trusted_signers != null && length(v.trusted_signers) > 0 }
}
output "cloudfront_distributions_viewer_certificate" {
  description = "Map of viewer_certificate values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.viewer_certificate) if v.viewer_certificate != null && length(v.viewer_certificate) > 0 }
}
output "cloudfront_distributions_viewer_mtls_config" {
  description = "Map of viewer_mtls_config values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => one(v.viewer_mtls_config) if v.viewer_mtls_config != null && length(v.viewer_mtls_config) > 0 }
}
output "cloudfront_distributions_wait_for_deployment" {
  description = "Map of wait_for_deployment values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.wait_for_deployment if v.wait_for_deployment != null }
}
output "cloudfront_distributions_web_acl_id" {
  description = "Map of web_acl_id values across all cloudfront_distributions, keyed the same as var.cloudfront_distributions"
  value       = { for k, v in aws_cloudfront_distribution.cloudfront_distributions : k => v.web_acl_id if v.web_acl_id != null && length(v.web_acl_id) > 0 }
}

