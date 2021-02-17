resource "google_project" "dev_project" {
  name = "dev_project"
  project_id = "dev_project_2021"
  folder_id = google_folder.dev_folder.name
}

resource "google_folder" "dev_folder" {
  display_name = "dev_folder_2021"
}