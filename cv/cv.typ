// Imports
#import "@preview/brilliant-cv:4.0.1": cv

#let profile = sys.inputs.at("profile", default: "en")
#let metadata = toml("profile_" + profile + "/metadata.toml")

#let import-modules(modules) = {
  for module in modules {
    include {
      "profile_" + profile + "/" + module + ".typ"
    }
  }
}

#show: cv.with(
  metadata,
  profile-photo: image("assets/avatar.jpeg"),
)

#import-modules((
  "professional",
  "education",
  "skills",
  // "projects",
  "certificates",
))
