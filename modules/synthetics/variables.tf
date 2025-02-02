# https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/synthetics_test
variable "datadog_synthetics" {
  type        = any
  description = "Map of Datadog synthetic test configurations. See catalog for examples"
}

variable "alert_tags" {
  type        = list(string)
  description = "List of alert tags to add to all alert messages, e.g. `[\"@opsgenie\"]` or `[\"@devops\", \"@opsgenie\"]`"
  default     = null
}

variable "alert_tags_separator" {
  type        = string
  description = "Separator for the alert tags. All strings from the `alert_tags` variable will be joined into one string using the separator and then added to the alert message"
  default     = "\n"
}

variable "locations" {
  type        = list(string)
  description = "Array of locations used to run synthetic tests"
  default     = []
}
