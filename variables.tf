variable "amiid" {
  description = "The AMI ID"
  type        = string
  default     = "ami-0742b4e673072066f"
}
variable "instance_type" {
  description = "Type of instance"
  type        = string
  default     = "t2.micro"
}
variable "tags" {
  description = "Tags"
  default     = "RT_APP"
}
variable "instance_count" {
  description = "Number of instance"
  type = number
  default = 2
}