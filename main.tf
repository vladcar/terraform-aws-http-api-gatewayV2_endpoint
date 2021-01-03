
resource "aws_apigatewayv2_route" "route" {
  api_id             = var.api_gateway_id
  route_key          = var.route_key
  target             = "integrations/${aws_apigatewayv2_integration.integration.id}"
  authorization_type = var.authorization_type
  authorizer_id      = var.authorizer_id
}

resource "aws_apigatewayv2_integration" "integration" {
  api_id              = var.api_gateway_id
  integration_type    = var.integration_type
  integration_subtype = var.integration_subtype
  integration_method  = "POST"
  integration_uri     = var.integration_uri
  description         = var.integration_description

  connection_type        = var.connection_type
  payload_format_version = var.payload_format_version

  lifecycle {
    ignore_changes = [passthrough_behavior]
  }
}
