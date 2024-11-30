# wesql-local: Using WeSQL with LocalStack-Mocked S3 Buckets

WeSQL is an innovative MySQL distribution that adopts a compute-storage separation architecture, with storage backed by S3 (and S3-compatible systems).

This means an AWS account with S3 access is typically required to use WeSQL. However, not everyone has personal access to an AWS account, and that's where this project becomes useful. Please note that this project is intended only for development and testing purposes—it is not suitable for data persistence or production environments.

This project combines the power of LocalStack to mock AWS services (specifically S3 for this use case), the WeSQL server official Docker image to set up the WeSQL server, and a PhpMyAdmin container for managing the server—all in a single docker-compose configuration. The LocalStack container creates a mock S3 storage and API, which WeSQL uses as its backend storage.

## How to Run

1. Navigate to the root folder of the repository.
2. Run docker compose up in your terminal.
3. Wait approximately 30 seconds for the stack to initialize.
4. Access PhpMyAdmin by visiting http://localhost:8080 in your web browser to manage the WeSQL server. Use "root" for user and password fields.

Note: Data persistence is not supported with the LocalStack Community Edition. As a result, the WeSQL server's state cannot be saved once the stack is stopped.