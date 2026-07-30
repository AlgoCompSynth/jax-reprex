#! /usr/bin/env Rscript

update.packages(ask = FALSE, repos = "https://cloud.r-project.org/")

required_packages <- c(
  "keras3",
  "tensorflow"
)
install.packages(required_packages, quiet = TRUE, repos = "https://cloud.r-project.org/")
warnings()

# Deep Learning with R, 3rd edition, Chapter section 3.5.1
library(keras3)
use_backend("jax")
jax <- import("jax")

# Deep Learning with R, 3rd edition, Chapter section 3.5.2
jnp <- import("jax.numpy")
jnp$ones(shape = shape(2, 2))
warnings()
