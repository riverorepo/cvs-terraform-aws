# Define the base directory
$baseDir = "C:\Users\Ruben\OneDrive\repo2\cvs-terraform-aws"

# Define the folder structure
$folders = @(
    "$baseDir\.github\workflows",
    "$baseDir\environments\dev",
    "$baseDir\environments\prod",
    "$baseDir\environments\staging",
    "$baseDir\modules\cloudwatch_alarm",
    "$baseDir\modules\ecs_fargate",
    "$baseDir\modules\s3_bucket",
    "$baseDir\modules\vpc"
)

# Define the files to be created in each directory
$files = @{
    "$baseDir\.github\workflows" = @("terraform.yml")
    
    "$baseDir\environments\dev" = @(
        "cloudwatch.tf", "ecs.tf", "outputs.tf", "providers.tf", "s3.tf",
        "terraform.tfvars", "variables.tf", "vpc.tf"
    )

    "$baseDir\environments\prod" = @(
        "cloudwatch.tf", "ecs.tf", "outputs.tf", "providers.tf", "s3.tf",
        "terraform.tfvars", "variables.tf", "vpc.tf"
    )

    "$baseDir\environments\staging" = @(
        "cloudwatch.tf", "ecs.tf", "outputs.tf", "providers.tf", "s3.tf",
        "terraform.tfvars", "variables.tf", "vpc.tf"
    )

    "$baseDir\modules\cloudwatch_alarm" = @(
        "alarm.tf", "log_metric_filter.tf", "outputs.tf", "sns.tf", "variables.tf"
    )

    "$baseDir\modules\ecs_fargate" = @(
        "autoscaling.tf", "cluster.tf", "iam.tf", "outputs.tf",
        "service.tf", "task_definition.tf", "variables.tf"
    )

    "$baseDir\modules\s3_bucket" = @(
        "bucket.tf", "logging.tf", "outputs.tf", "public_access.tf", "variables.tf"
    )

    "$baseDir\modules\vpc" = @(
        "outputs.tf", "private_subnets.tf", "public_subnets.tf", "variables.tf", "vpc.tf"
    )
}

# Root-level files
$rootFiles = @("README.md")

# Create directories
foreach ($folder in $folders) {
    if (-Not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force
    }
}

# Create files inside respective directories
foreach ($path in $files.Keys) {
    foreach ($file in $files[$path]) {
        $filePath = Join-Path $path $file
        if (-Not (Test-Path $filePath)) {
            New-Item -ItemType File -Path $filePath -Force | Out-Null
        }
    }
}

# Create root-level files
foreach ($file in $rootFiles) {
    $filePath = Join-Path $baseDir $file
    if (-Not (Test-Path $filePath)) {
        New-Item -ItemType File -Path $filePath -Force | Out-Null
    }
}

Write-Host "Terraform folder structure created successfully at: $baseDir"
