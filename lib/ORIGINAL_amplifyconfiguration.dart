const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "rotaguidov2": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://hw7bt2tjgfenjndkwi76v4atgi.appsync-api.us-east-1.amazonaws.com/graphql",
                    "region": "us-east-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-hwmgkvnulje65cvw2kyn6srdyu"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://hw7bt2tjgfenjndkwi76v4atgi.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-hwmgkvnulje65cvw2kyn6srdyu",
                        "ClientDatabasePrefix": "rotaguidov2_API_KEY"
                    },
                    "rotaguidov2_AWS_IAM": {
                        "ApiUrl": "https://hw7bt2tjgfenjndkwi76v4atgi.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "rotaguidov2_AWS_IAM"
                    },
                    "rotaguidov2_AMAZON_COGNITO_USER_POOLS": {
                        "ApiUrl": "https://hw7bt2tjgfenjndkwi76v4atgi.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "AMAZON_COGNITO_USER_POOLS",
                        "ClientDatabasePrefix": "rotaguidov2_AMAZON_COGNITO_USER_POOLS"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-1:9226c0ff-b5f7-4d17-a6a4-c3d1d62e003a",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_krhX2dkyt",
                        "AppClientId": "739g5c568i039uc3e2t1pro4ha",
                        "Region": "us-east-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": [
                                "REQUIRES_LOWERCASE",
                                "REQUIRES_NUMBERS",
                                "REQUIRES_SYMBOLS",
                                "REQUIRES_UPPERCASE"
                            ]
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "rotaguidov2-storage-d3ackekmwiwxof174044-staging",
                        "Region": "us-east-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "rotaguidov2-storage-d3ackekmwiwxof174044-staging",
                "region": "us-east-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';