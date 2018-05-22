This is a partly terraformed version of the AWS provided ECS Draining sample : https://github.com/aws-samples/ecs-cid-sample/. This is a seperate helper module to use with the ECS module. The reason for seperation is that the ZIP File is large, terraform ZIP handling slow, and that we only need one lambda function for draining which can be used for multiple ECS Clusters.


## Usage

```hcl
module "ecs_draining" {
  source = "github.com/blinkist/airship-tf-ecs-draining"
  name = "projectX"
}
```

## Conditional creation

```hcl
module "ecs_draining" {
  source = "github.com/blinkist/airship-tf-ecs-draining"
  name = "projectX"
  create = false
}
```

## Outputs

| Name | Description |
|------|-------------|
| lambda_function_arn |  The ARN of the created Lambda function  |

