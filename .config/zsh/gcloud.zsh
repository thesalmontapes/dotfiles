# Lazy-load Google Cloud SDK for faster shell startup
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Add gcloud to PATH without sourcing the heavy initialization script
GCLOUD_SDK_PATH="/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
if [ -d "$GCLOUD_SDK_PATH" ]; then
  export PATH="$GCLOUD_SDK_PATH/bin:$PATH"
fi

# Lazy-load gcloud completions and additional setup
_lazy_load_gcloud() {
  unset -f gcloud gsutil bq
  if [ -f "$GCLOUD_SDK_PATH/path.zsh.inc" ]; then
    source "$GCLOUD_SDK_PATH/path.zsh.inc"
  fi
  if [ -f "$GCLOUD_SDK_PATH/completion.zsh.inc" ]; then
    source "$GCLOUD_SDK_PATH/completion.zsh.inc"
  fi
}

# Create stub functions that trigger full gcloud loading
gcloud() {
  _lazy_load_gcloud
  gcloud "$@"
}

gsutil() {
  _lazy_load_gcloud
  gsutil "$@"
}

bq() {
  _lazy_load_gcloud
  bq "$@"
}
