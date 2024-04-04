resource "google_cloud_run_v2_job" "hello" {
  name     = "hello"
  location = "us-central1"

  template {
    template {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }
}
