module "lambda_functions" {
  source = "./modules/lambda-functions"

  function_configurations = [
    {
      function_name   = "function1"
      handler         = "function1.lambda_handler"
      runtime         = "python3.8"
      code_directory  = "function1"
     
      role = "arn:aws:iam::558940753150:role/lambda_custom_role"
      memory_size        = 128
    },
    {
      function_name   = "function2"
      handler         = "function2.lambda_handler"
      runtime         = "python3.8"
      code_directory  = "function2"
      role = "arn:aws:iam::558940753150:role/lambda_custom_role"
     
      memory_size        = 128
    }
  ]
}


output "function1_arn" {
  value = module.lambda_functions.lambda_functions["function1"].arn
}

output "function2_arn" {
  value = module.lambda_functions.lambda_functions["function2"].arn
}
