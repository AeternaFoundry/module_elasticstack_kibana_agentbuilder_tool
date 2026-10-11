resource "elasticstack_kibana_agentbuilder_tool" "kibana_agentbuilder_tools" {
  for_each = var.kibana_agentbuilder_tools

  configuration = each.value.configuration
  tool_id       = each.value.tool_id
  type          = each.value.type
  description   = each.value.description
  space_id      = each.value.space_id
  tags          = each.value.tags
  timeouts      = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

