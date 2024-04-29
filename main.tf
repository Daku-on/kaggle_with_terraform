resource "google_project_service" "notebooks" {
  provider           = google
  service            = "notebooks.googleapis.com"
  disable_on_destroy = false
}

resource "google_notebooks_instance" "basic_instance" {
  project      = var.project_id
  name         = var.notebook_name
  provider     = google
  region      = var.region
  machine_type = var.machine_type

  vm_image {
    project      = "deeplearning-platform-release"
    image_family = "tf-ent-2-9-cu113-notebooks"
  }

  depends_on = [
    google_project_service.notebooks
  ]
}