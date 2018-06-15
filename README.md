This is a partly terraformed version of the AWS provided ECS Draining sample : https://github.com/aws-samples/ecs-cid-sample/. This is a seperate helper module to use with the ECS module. The reason for seperation is that the ZIP File is large, terraform ZIP handling slow, and that we only need one lambda function for draining which can be used for multiple ECS Clusters.

Blog article: https://aws.amazon.com/blogs/compute/how-to-automate-container-instance-draining-in-amazon-ecs/ .

![](https://s3.amazonaws.com/chrisb/Architecture.png)

## Usage

```hcl
module "ecs_draining" {
  source  = "blinkist/airship-ecs-instance-draining/aws"
  version = "0.1.0"
  name = "projectX"
}
```

## Conditional creation

```hcl
module "ecs_draining" {
  source  = "blinkist/airship-ecs-instance-draining/aws"
  version = "0.1.0"
  name = "projectX"
  create = false
}
```

## Outputs

| Name | Description |
|------|-------------|
| lambda_function_arn |  The ARN of the created Lambda function  |

