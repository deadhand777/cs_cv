// Imports
#import "@preview/brilliant-cv:4.1.0": cv

#let metadata = toml("profile_en/metadata.toml")

#show: cv.with(
  metadata,
  profile-photo: image("assets/avatar.jpeg"),
)

#include "profile_en/professional.typ"
#include "profile_en/education.typ"
#include "profile_en/skills.typ"
