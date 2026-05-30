resource "aws_ecrpublic_repository" "frontend" {
  repository_name  = "3-tier-frontend"
}

resource "aws_ecrpublic_repository" "backend" {
  repository_name  = "3-tier-backend"
  
}