output "kibana_agentbuilder_tools_id" {
  description = "Map of id values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_agentbuilder_tools_configuration" {
  description = "Map of configuration values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no configuration are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "kibana_agentbuilder_tools_description" {
  description = "Map of description values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_agentbuilder_tools_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_agentbuilder_tools_space_id" {
  description = "Map of space_id values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_agentbuilder_tools_tags" {
  description = "Map of tags values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no tags are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kibana_agentbuilder_tools_tool_id" {
  description = "Map of tool_id values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no tool_id are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.tool_id if v.tool_id != null && length(v.tool_id) > 0 }
}
output "kibana_agentbuilder_tools_type" {
  description = "Map of type values across all kibana_agentbuilder_tools, keyed the same as var.kibana_agentbuilder_tools except keys with no type are omitted"
  value       = { for k, v in elasticstack_kibana_agentbuilder_tool.kibana_agentbuilder_tools : k => v.type if v.type != null && length(v.type) > 0 }
}

