variable "cloudfront_distributions" {
  description = <<EOT
Map of cloudfront_distributions, attributes below
Required:
    - enabled
    - default_cache_behavior (block):
        - allowed_methods (required)
        - cache_policy_id (optional)
        - cached_methods (required)
        - compress (optional)
        - default_ttl (optional)
        - field_level_encryption_id (optional)
        - forwarded_values (optional, block):
            - cookies (required, block):
                - forward (required)
                - whitelisted_names (optional)
            - headers (optional)
            - query_string (required)
            - query_string_cache_keys (optional)
        - function_association (optional, block):
            - event_type (required)
            - function_arn (required)
        - grpc_config (optional, block):
            - enabled (optional)
        - lambda_function_association (optional, block):
            - event_type (required)
            - include_body (optional)
            - lambda_arn (required)
        - max_ttl (optional)
        - min_ttl (optional)
        - origin_request_policy_id (optional)
        - realtime_log_config_arn (optional)
        - response_headers_policy_id (optional)
        - smooth_streaming (optional)
        - target_origin_id (required)
        - trusted_key_groups (optional)
        - trusted_signers (optional)
        - viewer_protocol_policy (required)
    - origin (block):
        - connection_attempts (optional)
        - connection_timeout (optional)
        - custom_header (optional, block):
            - name (required)
            - value (required)
        - custom_origin_config (optional, block):
            - http_port (required)
            - https_port (required)
            - ip_address_type (optional)
            - origin_keepalive_timeout (optional)
            - origin_mtls_config (optional, block):
                - client_certificate_arn (required)
            - origin_protocol_policy (required)
            - origin_read_timeout (optional)
            - origin_ssl_protocols (required)
        - domain_name (required)
        - origin_access_control_id (optional)
        - origin_id (required)
        - origin_path (optional)
        - origin_shield (optional, block):
            - enabled (required)
            - origin_shield_region (optional)
        - response_completion_timeout (optional)
        - s3_origin_config (optional, block):
            - origin_access_identity (required)
        - vpc_origin_config (optional, block):
            - origin_keepalive_timeout (optional)
            - origin_read_timeout (optional)
            - owner_account_id (optional)
            - vpc_origin_id (required)
    - restrictions (block):
        - geo_restriction (required, block):
            - locations (optional)
            - restriction_type (required)
    - viewer_certificate (block):
        - acm_certificate_arn (optional)
        - cloudfront_default_certificate (optional)
        - iam_certificate_id (optional)
        - minimum_protocol_version (optional)
        - ssl_support_method (optional)
Optional:
    - aliases
    - anycast_ip_list_id
    - comment
    - continuous_deployment_policy_id
    - default_root_object
    - http_version
    - is_ipv6_enabled
    - price_class
    - retain_on_delete
    - staging
    - tags
    - tags_all
    - wait_for_deployment
    - web_acl_id
    - cache_tag_config (block):
        - header_name (required)
    - connection_function_association (block):
        - id (required)
    - custom_error_response (block):
        - error_caching_min_ttl (optional)
        - error_code (required)
        - response_code (optional)
        - response_page_path (optional)
    - logging_config (block):
        - bucket (optional)
        - include_cookies (optional)
        - prefix (optional)
    - ordered_cache_behavior (block):
        - allowed_methods (required)
        - cache_policy_id (optional)
        - cached_methods (required)
        - compress (optional)
        - default_ttl (optional)
        - field_level_encryption_id (optional)
        - forwarded_values (optional, block):
            - cookies (required, block):
                - forward (required)
                - whitelisted_names (optional)
            - headers (optional)
            - query_string (required)
            - query_string_cache_keys (optional)
        - function_association (optional, block):
            - event_type (required)
            - function_arn (required)
        - grpc_config (optional, block):
            - enabled (optional)
        - lambda_function_association (optional, block):
            - event_type (required)
            - include_body (optional)
            - lambda_arn (required)
        - max_ttl (optional)
        - min_ttl (optional)
        - origin_request_policy_id (optional)
        - path_pattern (required)
        - realtime_log_config_arn (optional)
        - response_headers_policy_id (optional)
        - smooth_streaming (optional)
        - target_origin_id (required)
        - trusted_key_groups (optional)
        - trusted_signers (optional)
        - viewer_protocol_policy (required)
    - origin_group (block):
        - failover_criteria (required, block):
            - status_codes (required)
        - member (required, block):
            - origin_id (required)
        - origin_id (required)
    - viewer_mtls_config (block):
        - mode (optional)
        - trust_store_config (optional, block):
            - advertise_trust_store_ca_names (optional)
            - ignore_certificate_expiry (optional)
            - trust_store_id (required)
EOT

  type = map(object({
    enabled                         = bool
    aliases                         = optional(set(string))
    anycast_ip_list_id              = optional(string)
    comment                         = optional(string)
    continuous_deployment_policy_id = optional(string)
    default_root_object             = optional(string)
    http_version                    = optional(string)
    is_ipv6_enabled                 = optional(bool)
    price_class                     = optional(string)
    retain_on_delete                = optional(bool)
    staging                         = optional(bool)
    tags                            = optional(map(string))
    tags_all                        = optional(map(string))
    wait_for_deployment             = optional(bool)
    web_acl_id                      = optional(string)
    default_cache_behavior = object({
      allowed_methods           = set(string)
      cache_policy_id           = optional(string)
      cached_methods            = set(string)
      compress                  = optional(bool)
      default_ttl               = optional(number)
      field_level_encryption_id = optional(string)
      forwarded_values = optional(object({
        cookies = object({
          forward           = string
          whitelisted_names = optional(set(string))
        })
        headers                 = optional(set(string))
        query_string            = bool
        query_string_cache_keys = optional(list(string))
      }))
      function_association = optional(list(object({
        event_type   = string
        function_arn = string
      })))
      grpc_config = optional(object({
        enabled = optional(bool)
      }))
      lambda_function_association = optional(list(object({
        event_type   = string
        include_body = optional(bool)
        lambda_arn   = string
      })))
      max_ttl                    = optional(number)
      min_ttl                    = optional(number)
      origin_request_policy_id   = optional(string)
      realtime_log_config_arn    = optional(string)
      response_headers_policy_id = optional(string)
      smooth_streaming           = optional(bool)
      target_origin_id           = string
      trusted_key_groups         = optional(list(string))
      trusted_signers            = optional(list(string))
      viewer_protocol_policy     = string
    })
    origin = list(object({
      connection_attempts = optional(number)
      connection_timeout  = optional(number)
      custom_header = optional(list(object({
        name  = string
        value = string
      })))
      custom_origin_config = optional(object({
        http_port                = number
        https_port               = number
        ip_address_type          = optional(string)
        origin_keepalive_timeout = optional(number)
        origin_mtls_config = optional(object({
          client_certificate_arn = string
        }))
        origin_protocol_policy = string
        origin_read_timeout    = optional(number)
        origin_ssl_protocols   = set(string)
      }))
      domain_name              = string
      origin_access_control_id = optional(string)
      origin_id                = string
      origin_path              = optional(string)
      origin_shield = optional(object({
        enabled              = bool
        origin_shield_region = optional(string)
      }))
      response_completion_timeout = optional(number)
      s3_origin_config = optional(object({
        origin_access_identity = string
      }))
      vpc_origin_config = optional(object({
        origin_keepalive_timeout = optional(number)
        origin_read_timeout      = optional(number)
        owner_account_id         = optional(string)
        vpc_origin_id            = string
      }))
    }))
    restrictions = object({
      geo_restriction = object({
        locations        = optional(set(string))
        restriction_type = string
      })
    })
    viewer_certificate = object({
      acm_certificate_arn            = optional(string)
      cloudfront_default_certificate = optional(bool)
      iam_certificate_id             = optional(string)
      minimum_protocol_version       = optional(string)
      ssl_support_method             = optional(string)
    })
    cache_tag_config = optional(object({
      header_name = string
    }))
    connection_function_association = optional(object({
      id = string
    }))
    custom_error_response = optional(list(object({
      error_caching_min_ttl = optional(number)
      error_code            = number
      response_code         = optional(number)
      response_page_path    = optional(string)
    })))
    logging_config = optional(object({
      bucket          = optional(string)
      include_cookies = optional(bool)
      prefix          = optional(string)
    }))
    ordered_cache_behavior = optional(list(object({
      allowed_methods           = set(string)
      cache_policy_id           = optional(string)
      cached_methods            = set(string)
      compress                  = optional(bool)
      default_ttl               = optional(number)
      field_level_encryption_id = optional(string)
      forwarded_values = optional(object({
        cookies = object({
          forward           = string
          whitelisted_names = optional(set(string))
        })
        headers                 = optional(set(string))
        query_string            = bool
        query_string_cache_keys = optional(list(string))
      }))
      function_association = optional(list(object({
        event_type   = string
        function_arn = string
      })))
      grpc_config = optional(object({
        enabled = optional(bool)
      }))
      lambda_function_association = optional(list(object({
        event_type   = string
        include_body = optional(bool)
        lambda_arn   = string
      })))
      max_ttl                    = optional(number)
      min_ttl                    = optional(number)
      origin_request_policy_id   = optional(string)
      path_pattern               = string
      realtime_log_config_arn    = optional(string)
      response_headers_policy_id = optional(string)
      smooth_streaming           = optional(bool)
      target_origin_id           = string
      trusted_key_groups         = optional(list(string))
      trusted_signers            = optional(list(string))
      viewer_protocol_policy     = string
    })))
    origin_group = optional(list(object({
      failover_criteria = object({
        status_codes = set(number)
      })
      member = list(object({
        origin_id = string
      }))
      origin_id = string
    })))
    viewer_mtls_config = optional(object({
      mode = optional(string)
      trust_store_config = optional(object({
        advertise_trust_store_ca_names = optional(bool)
        ignore_certificate_expiry      = optional(bool)
        trust_store_id                 = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        v.default_cache_behavior.function_association == null || (length(v.default_cache_behavior.function_association) <= 2)
      )
    ])
    error_message = "Each function_association list must contain at most 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        v.default_cache_behavior.lambda_function_association == null || (length(v.default_cache_behavior.lambda_function_association) <= 4)
      )
    ])
    error_message = "Each lambda_function_association list must contain at most 4 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        length(v.origin) >= 1
      )
    ])
    error_message = "Each origin list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        v.ordered_cache_behavior == null || alltrue([for item in v.ordered_cache_behavior : (item.function_association == null || (length(item.function_association) <= 2))])
      )
    ])
    error_message = "Each function_association list must contain at most 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        v.ordered_cache_behavior == null || alltrue([for item in v.ordered_cache_behavior : (item.lambda_function_association == null || (length(item.lambda_function_association) <= 4))])
      )
    ])
    error_message = "Each lambda_function_association list must contain at most 4 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        v.origin_group == null || alltrue([for item in v.origin_group : (length(item.member) >= 2 && length(item.member) <= 2)])
      )
    ])
    error_message = "Each member list must contain between 2 and 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        alltrue([for item in v.origin : (item.connection_attempts == null || (item.connection_attempts >= 1 && item.connection_attempts <= 3))])
      )
    ])
    error_message = "must be between 1 and 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        alltrue([for item in v.origin : (item.connection_timeout == null || (item.connection_timeout >= 1 && item.connection_timeout <= 10))])
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        alltrue([for item in v.origin : (item.custom_origin_config == null || (item.custom_origin_config.origin_keepalive_timeout == null || (item.custom_origin_config.origin_keepalive_timeout >= 1)))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        alltrue([for item in v.origin : (item.custom_origin_config == null || (item.custom_origin_config.origin_read_timeout == null || (item.custom_origin_config.origin_read_timeout >= 1)))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        alltrue([for item in v.origin : (item.vpc_origin_config == null || (item.vpc_origin_config.origin_keepalive_timeout == null || (item.vpc_origin_config.origin_keepalive_timeout >= 1)))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_distributions : (
        alltrue([for item in v.origin : (item.vpc_origin_config == null || (item.vpc_origin_config.origin_read_timeout == null || (item.vpc_origin_config.origin_read_timeout >= 1)))])
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 32 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

