jekyll build
aws s3 sync _site/ s3://radicle.io --region us-west-2 --delete
