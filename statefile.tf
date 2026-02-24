terraform{
    backend "s3"{
        bucket = "abac-bucket-2396"
        region = "us-west-1"
        key = "terraform.tfstate"
    }
}