data "resource" "object" {
  vars = {
    cluster_1         = join("\n", data.template_file.cluster_1.*.rendered)
    cluster_2         = format("name_%02d", count.index + 1)
    PROXY_AUTH        = join(":", [var.proxy_username, var.proxy_password])
  }
}