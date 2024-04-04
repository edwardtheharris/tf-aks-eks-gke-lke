resource "google_storage_bucket" "remote-dev" {
  name     = "remote-development-docker-cloud-function"
  location = "US"
  logging {
    log_bucket = "remote-development-docker-cloud-function"
  }
  versioning {
    enabled = true
  }
}

resource "google_storage_bucket_object" "archive" {
  name   = "hello.zip"
  bucket = google_storage_bucket.remote-dev.name
  source = "./"
}

resource "google_cloudfunctions_function" "hello-world" {
  name        = "helloworld"
  description = "Hello, world!"
  runtime     = "python39"

  available_memory_mb          = 128
  source_archive_bucket        = google_storage_bucket.remote-dev.name
  source_archive_object        = google_storage_bucket_object.archive.name
  trigger_http                 = true
  https_trigger_security_level = "SECURE_ALWAYS"
  timeout                      = 60
  entry_point                  = "hello_world"
  labels = {
    name = "hello-world"
  }
}

# IAM entry for a single user to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.hello-world.project
  region         = google_cloudfunctions_function.hello-world.region
  cloud_function = google_cloudfunctions_function.hello-world.name

  role   = "roles/cloudfunctions.invoker"
  member = var.member
}
